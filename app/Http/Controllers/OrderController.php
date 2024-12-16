<?php

namespace App\Http\Controllers;

use App\Helper\OrderStatus;
use App\Models\BasketProduct;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Product;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class OrderController extends Controller
{

    public function index()
    {
        $user = Auth::user();
        $orders = Order::with('order_detail')->where('user_id', $user->id)->orderByDesc('created_at')->get();

        if (!$orders || $orders->isEmpty()) {
            return response()->json([
                "success" => false,
                "message" => "No orders found"
            ], 404);
        }
        $formattedOrders = $orders->map(function ($order) {
            return [
                'id' => $order->id,
                'created_at' => Carbon::parse($order->created_at)->format('Y-m-d'),
                'order_detail' => $order->order_detail,
                "uid" => $order->uid,
                'address' => $order->address,
                'payment_type' => $order->payment_type,
                "status" => $order->status,
                "total" => $order->total
            ];
        });

        return response()->json([
            "data" => $formattedOrders,
            "success" => true,
            "message" => "Sifarişlər uğurla tapıldı"
        ], 200);
    }

    public function all_orders()
    {
        $orders = Order::with('order_detail', 'user')->orderByDesc('created_at')->get();
        return response()->json([
            'data' => $orders,
            'success' => true
        ]);
    }

    public function store(Request $req)
    {
        $validator = Validator::make($req->all(), [
            'address' => 'required|string|max:255',
            'payment_type' => 'required|string|max:255',
        ]);

        $user = Auth::user();
        $basketId = $user->basket->id;
        $basketProducts = BasketProduct::where('basket_id', $basketId)->get();
        if ($basketProducts->isEmpty()) {
            return response()->json([
                "success" => false,
                "message" => "Səbət boşdur"
            ]);
        }
        $total = 0;
        //orders table
        $newOrder =  new Order();
        $newOrder->user_id = $user->id;
        $newOrder->basket_id = $basketId;
        $newOrder->address = $req->address;
        $newOrder->payment_type = $req->payment_type;
        $newOrder->total = 0;
        $newOrder->status = "PENDING";
        $newOrder->uid = uniqid();
        $newOrder->save();


        foreach ($basketProducts as $basketProduct) {
            $product = Product::find($basketProduct->product_id);
            $total += $basketProduct->qty * $product->price;

            //order_details table
            $orderDetailsBody = new OrderDetail();
            $orderDetailsBody->order_id = $newOrder->id;
            $orderDetailsBody->product_id = $basketProduct->product_id;
            $orderDetailsBody->quantity = $basketProduct->qty;
            $orderDetailsBody->price = $product->price;
            $orderDetailsBody->total = $product->price * $basketProduct->qty;
            $orderDetailsBody->save();
        }

        $newOrder->total = $total;
        $newOrder->save();

        BasketProduct::where('basket_id', $basketId)->delete(); //eger bu mehsul sifaris edilibse onlari sil basketden

        return response()->json([
            'message' => "Sifariş edildi",
            'success' => true
        ]);
    }


    //In Dashboard

    public function confirmed($id)
    {
        $order = Order::find($id);
        if ($order->status == "PENDING") {
            $order->status = "CONFIRMED";
            if ($order->save()) {
                return response()->json([
                    "data" => $order,
                    "success" => true
                ]);
            }
            return response()->json([
                "message" => "Order not confirmed",
                "success" => false
            ]);
        }
    }

    public function shipped($id)
    {
        $order = Order::findOrFail($id);
        if ($order->status == "CONFIRMED") {
            $order->status = "SHIPPED";
            if ($order->save()) {
                return response()->json([
                    "data" => $order,
                    "success" => true
                ]);
            }
            return response()->json([
                "message" => "Order not shipped",
                "success" => false
            ]);
        }
    }

    public function delivered($id)
    {
        $order = Order::findOrFail($id);
        if ($order->status == "SHIPPED") {
            $order->status = "DELIVERED";
            if ($order->save()) {
                return response()->json([
                    "data" => $order,
                    "success" => true
                ]);
            }
            return response()->json([
                "message" => "Order not delivered",
                "success" => false
            ]);
        }
    }

    public function returned($id)
    {
        $order = Order::findOrFail($id);
        if ($order->status == "DELIVERED") {
            $order->status = "RETURNED";
            if ($order->save()) {
                return response()->json([
                    "data" => $order,
                    "success" => true
                ]);
            }
            return response()->json([
                "message" => "Order not returned",
                "success" => false
            ]);
        }
    }

    public function canceled($id)
    {
        $order = Order::findOrFail($id);
        if ($order->status == "PENDING") {
            $order->status = "CANCELED";
            if ($order->save()) {
                return response()->json([
                    "data" => $order,
                    "success" => true
                ]);
            }
            return response()->json([
                "message" => "Order not canceled",
                "success" => false
            ]);
        }
    }
}
