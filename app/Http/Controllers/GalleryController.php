<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class GalleryController extends Controller
{

    public function index()
    {
        $images = Gallery::all();
        return response()->json([
            "data" => $images,
            "message" => "Images fetched successfully",
            "success" => true
        ]);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
           "image" => "required|image|mimes:jpeg,png,jpg,gif,svg|max:2048",
        ]);

        if ($validator->fails()) {
            return response()->json([
                'errors'=>$validator->errors(),
                "success"=>false
            ], 422);
        }

        $image = new Gallery();
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $path = $file->store('images', 'public');
            $image->image = $path;
        }

        if(!$image->save()){
            return response()->json([
                'message'=>"Image not created",
                "success"=>false
            ], 500);
        }
        return response()->json([
            'message'=>"Image created",
            "success"=>true
        ], 200);
    }

    public function destroy($id)
    {
        $image = Gallery::find($id);

        \Illuminate\Support\Facades\Storage::disk('public')->delete(str_replace('/storage/', '', $image->image));

        $image->delete();
        return response()->json([
            "message" => "Image deleted successfully",
            "success" => true
        ]);
    }
}
