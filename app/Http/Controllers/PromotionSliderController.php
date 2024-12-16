<?php

namespace App\Http\Controllers;

use App\Models\PromotionSlider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class PromotionSliderController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $sliders = PromotionSlider::all();
        return response()->json([
            "data" => $sliders
        ], 200);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'subtitle'=>"required",
            'content' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $image_path = $image->store('aboutbanner', 'public');
        }
        $slider = new  PromotionSlider();
        $slider->title = $request->title;
        $slider->subtitle = $request->subtitle;
        $slider->content = strip_tags($request->content);
        $slider->image = $image_path;
        if ($slider->save()) {
            return response()->json([
                "data" => $slider,
                "message" => "Shop slider created successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Shop slider not created",
                "success" => false
            ], 500);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $slider = PromotionSlider::find($id);
        return response()->json([
            "data" => $slider
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(PromotionSlider $promotionSlider)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'subtitle' => 'required',
            'content' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }

        $slider = PromotionSlider::find($id);
        $slider->title = $request->title;
        $slider->subtitle = $request->subtitle;
        $slider->content = strip_tags($request->content);
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $image_path = $image->store('aboutbanner', 'public');
            $slider->image = $image_path;
        }
        if ($slider->save()) {
            return response()->json([
                "data" => $slider,
                "message" => "Shop slider updated successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Shop slider not updated",
                "success" => false
            ], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function delete($id)
    {
        $slider = PromotionSlider::find($id);
        if ($slider->delete()) {
            return response()->json([
                "message" => "Shop slider deleted successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Shop slider not deleted",
                "success" => false
            ], 500);
        }
    }

    public function publish($id){
        try {
            $slider = PromotionSlider::find($id);
            if (!$slider) {
                return response()->json([
                    "message" => "Banner not found",
                    "success" => false
                ], 404);
            }

            $slider->is_publish = true;
            if ($slider->save()) {
                return response()->json([
                    "data" => $slider,
                    "message" => "About slider published successfully",
                    "success" => true
                ], 200);
            } else {
                return response()->json([
                    "message" => "Failed to save slider",
                    "success" => false
                ], 500);
            }
        } catch (\Exception $e) {
            return response()->json([
                "message" => "Server error: " . $e->getMessage(),
                "success" => false
            ], 500);
        }
    }

    public function published(){
        $sliders = PromotionSlider::where('is_publish', true)->get();
        if(!$sliders){
            return response()->json([
                'message'=>'No slider found',
                'success'=>false
            ]);
        }
        return response()->json([
            "data" => $sliders,
            "success" => true
        ], 200);
    }
}
