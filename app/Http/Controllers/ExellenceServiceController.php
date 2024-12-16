<?php

namespace App\Http\Controllers;

use App\Models\ExellenceService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ExellenceServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $exellence = ExellenceService::all();
        return response()->json([
            "data" => $exellence
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
        $exellence = new  ExellenceService();
        $exellence->title = $request->title;
        $exellence->content = strip_tags($request->content);
        $exellence->image = $image_path;
        if ($exellence->save()) {
            return response()->json([
                "data" => $exellence,
                "message" => "Shop exellence created successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Shop exellence not created",
                "success" => false
            ], 500);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $exellence = ExellenceService::find($id);
        return response()->json([
            "data" => $exellence
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ExellenceService $exellenceService)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|max:255',
            'content' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }

        $exellence = ExellenceService::find($id);
        $exellence->title = $request->title;
        $exellence->content = strip_tags($request->content);
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $image_path = $image->store('aboutbanner', 'public');
            $exellence->image = $image_path;
        }
        if ($exellence->save()) {
            return response()->json([
                "data" => $exellence,
                "message" => "Shop exellence updated successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Shop exellence not updated",
                "success" => false
            ], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function delete($id)
    {
        $exellence = ExellenceService::find($id);
        if ($exellence->delete()) {
            return response()->json([
                "message" => "Shop exellence deleted successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Shop exellence not deleted",
                "success" => false
            ], 500);
        }
    }

    public function publish($id){
        try {
            $exellences = ExellenceService::where('is_publish', true)->get();
            if ($exellences) {
                foreach ($exellences as $exellence) {
                    $exellence->is_publish = false;
                    $exellence->save();
                }
            }

            $exellence = ExellenceService::find($id);
            if (!$exellence) {
                return response()->json([
                    "message" => "Banner not found",
                    "success" => false
                ], 404);
            }

            $exellence->is_publish = true;
            if ($exellence->save()) {
                return response()->json([
                    "data" => $exellence,
                    "message" => "About exellence published successfully",
                    "success" => true
                ], 200);
            } else {
                return response()->json([
                    "message" => "Failed to save exellence",
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
        $exellences = ExellenceService::where('is_publish', true)->first();
        if(!$exellences){
            return response()->json([
                'message'=>'No exellence found',
                'success'=>false
            ]);
        }
        return response()->json([
            "data" => $exellences,
            "success" => true
        ], 200);
    }
}
