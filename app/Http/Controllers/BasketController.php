<?php

namespace App\Http\Controllers;

use App\Models\BasketProduct;
use App\Models\Product;
use App\Models\ProductRating;
use App\Models\ProductView;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BasketController extends Controller
{
    //1 iser-in butun sebet mehsullari saxlayacaq
    public function index()
    {
        $basketId = Auth::user()->basket->id;
        $basketProducts = BasketProduct::where('basket_id', $basketId)->get();
        $totalPrice = 0;
        $rating = [];
        $reviews = [];
        $totalDiscount = 0;
        foreach ($basketProducts as $basketProduct) {
            $rating[][$basketProduct->product_id] = $this->getAverageRating($basketProduct->product_id);
            $reviews[][$basketProduct->product_id] = $this->reviews($basketProduct->product_id);
            $totalPrice += $basketProduct->product->price * $basketProduct->qty;
            if ($basketProduct->product->discount) {
                $totalDiscount += $basketProduct->product->discount * $basketProduct->qty;
            }
        }
        return response()->json([
            'data' => $basketProducts,
            'totalPrice' => $totalPrice,
            "rating" => $rating,
            'reviews' => $reviews,
            'totalDiscount' => $totalDiscount,
            'success' => true
        ]);
    }

    //sebetdeki mehsullarin sayi
    public function productQty()
    {
        $user = Auth::user();
        $basketId = Auth::user()->basket->id;
        $productQty = BasketProduct::where('basket_id', $basketId)->sum('qty');
        return response()->json([
            'data' => $productQty,
            'success' => true
        ]);
    }

    //sebete yeni mehsul elave etme
    public function store(Request $request)
    {
        $user = Auth::user(); //login olan istifadeci
        $basketId = $user->basket->id;
        $product = Product::find($request->product_id); //baskete elave olunen mehsul
        if ($product) { //eger mehsul varsa bazada
            if ($product->hasStock) { //eger bu mehsul satisda varsa
                //Productu stok saydan cox elave etmek olmaz
                $basket = BasketProduct::where('basket_id', $basketId)->where('product_id', $product->id)->where('product_color', $request->product_color)->first();
                //eger user bu mehsulu basketine elave etmiyibse
                //yeni ilk defe elave edir(bu mehsuldan birinciini elave edir)
                if ($basket == null) {
                    $basketItem = new BasketProduct();
                    $basketItem->basket_id = $basketId;
                    $basketItem->product_id = $product->id;
                    $basketItem->qty = $request->quantity;
                    $basketItem->product_color = $request->product_color;
                    $basketItem->color_image = $request->color_image;
                    $basketItem->save();

                    $product->stock -= $request->quantity;
                    $product->save();
                    return response()->json([
                        'message' => "Məhsul səbətə əlavə edildi",
                        'success' => true
                    ], 200);
                } else {
                    //eger bu mehsulu basketde artiq var ve user sadece onun sayini artirir
                    //artirmamisdan qabaq stock sayini yoxlamaliyiq ki elave olunan mehsul sayi stock sayindan cox ola bilmez
                    // if ($basket->qty + $request->quantity > $product->stock) {
                    //     return response()->json([
                    //         'message' => "Product out of stock",
                    //         'success' => false
                    //     ], 500);
                    // } else {

                    $basket->qty += $request->quantity;
                    $basket->save();

                    $product->stock -= $request->quantity;
                    $product->save();
                    if ($product->stock == 0) {
                        $product->hasStock = false;
                        $product->save();
                    }
                    return response()->json([
                        'message' => "Məhsul səbətə əlavəedildi",
                        'success' => true
                    ], 200);
                    // }
                }
            } else {
                return response()->json([
                    'message' => "Məhsul bitmişdir",
                    'success' => false
                ], 500);
            }
        } else {
            return response()->json([
                'message' => "Məhsul tapılmadı",
                'success' => false
            ], 500);
        }
    }

    //mehsulu sebetden silme
    public function delete(Request $req, $id)
    {
        $req->validate([
            "product_color" => 'required',
            'product_id' => 'required|numeric'
        ]);
        //eger bele mehsul basket-de varsa onu tamamiyle silir basket-den
        $basketId = Auth::user()->basket->id;
        $basketProduct = BasketProduct::where('basket_id', $basketId)->where('product_id', $req->product_id)->where('product_color', $req->product_color)->first();
        $product = Product::find($req->product_id);
        if ($basketProduct) {
            $basketProduct->delete();
            $product->stock += $basketProduct->qty;
            if (!$product->hasStock) {
                $product->hasStock = true;
            }
            $product->save();
            return response()->json([
                'message' => "Məhsul səbətdən çıxarıldı",
                'success' => true
            ]);
        }
        return response()->json([
            'message' => "Məhsul səbətdə tapılmadı",
            'success' => false
        ]);
    }

    //sebetdeki mehsulun sayin 1 vahid azaltmaq
    public function decrease(Request $req)
    {
        $req->validate([
            "product_id" => 'required|numeric',
        ]);
        $basketId = Auth::user()->basket->id;
        $basketProduct = BasketProduct::where('basket_id', $basketId)->where('product_id', $req->product_id)->where('product_color', $req->product_color)->first();
        $product = Product::find($req->product_id);
        if ($basketProduct) {
            if ($basketProduct->qty > 1) {
                $basketProduct->qty -= 1;
                $basketProduct->save();
                if (!$product->hasStock) {
                    $product->hasStock = true;
                }
                $product->stock += 1;
                $product->save();
                return response()->json([
                    'message' => "Məhsulum miqdarı azaldı",
                    'success' => true
                ]);
            } elseif ($basketProduct->qty == 1) {
                $basketProduct->delete();
                return response()->json([
                    'message' => "Məhsul tamamile səbətdən çıxarıldı",
                    'success' => true
                ]);
            }
        }
        return response()->json([
            'message' => "Məhsul səbətdə tapılmadı",
            'success' => false
        ]);
    }

    //sebetdeki mehsulun sayin 1 vahid artirmaq
    public function increase(Request $req)
    {
        $req->validate([
            "product_id" => 'required|numeric'
        ]);
        $basketId = Auth::user()->basket->id;
        $basketProduct = BasketProduct::where('basket_id', $basketId)->where('product_id', $req->product_id)->where('product_color', $req->product_color)->first();
        $product = Product::find($req->product_id);
        if ($basketProduct) {
            if ($product->stock) {
                $basketProduct->qty += 1;
                $basketProduct->save();
                $product->stock -= 1;
                $product->save();
                return response()->json([
                    'qty' => $basketProduct->qty,
                    'message' => "Məhsulum miqdarı artırdı",
                    'success' => true
                ]);
            } else {
                $product->hasStock = false;
                $product->save();
                return response()->json([
                    'message' => "Məhsul bitmişdir",
                    'success' => false
                ], 500);
            }
        }
        return response()->json([
            'message' => "Məhsulun miqdarını artırmaq mümkün olmadı",
            'success' => false
        ]);
    }

    public function getAverageRating($productId)
    {
        $averageRating = ProductRating::where('product_id', $productId)->avg('rating');
        return response()->json(['average_rating' => $averageRating]);
    }

    public function reviews($productId)
    {
        $reviews = ProductView::where('product_id', $productId)->count();
        if ($reviews) {
            return response()->json([
                "data" => $reviews,
                "success" => true
            ], 200);
        }
        return response()->json([
            "message" => 'Heç bir baxış tapılmadı',
            "success" => false
        ]);
    }
}
