<?php

namespace App\Http\Controllers;

use App\Models\ServiceArticle;
use App\Models\ServiceArticleTitle;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ServiceArticleTitleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $titles = ServiceArticleTitle::all();
        return response()->json([
            "data" => $titles,
            "success" => true
        ]);
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
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }
        $title = new  ServiceArticleTitle();
        $title->name = $request->title;
        if ($title->save()) {
            return response()->json([
                "data" => $title,
                "message" => "Service article title created successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Service article title not created",
                "success" => false
            ], 500);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $title = ServiceArticleTitle::find($id);
        return response()->json([
            "data" => $title
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ServiceArticleTitle $serviceArticleTitle)
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
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }

        $title = ServiceArticleTitle::find($id);
        $title->name = $request->title;
        if ($title->save()) {
            return response()->json([
                "data" => $title,
                "message" => "Service article title updated successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Service article title not updated",
                "success" => false
            ], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $title = ServiceArticleTitle::find($id);
        if ($title->delete()) {
            return response()->json([
                "message" => "Service article title deleted successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Service article title not deleted",
                "success" => false
            ], 500);
        }
    }

    public function publishTitle($id)
    {
        try {
            $published_title = ServiceArticleTitle::where('is_publish', true)->get();
            if ($published_title) {
                foreach ($published_title as $title) {
                    $title->is_publish = false;
                    $title->save();
                }
            }

            $title = ServiceArticleTitle::find($id);
            if (!$title) {
                return response()->json([
                    "message" => "Title not found",
                    "success" => false
                ], 404);
            }

            $title->is_publish = true;
            if ($title->save()) {
                return response()->json([
                    "data" => $title,
                    "message" => "About title published successfully",
                    "success" => true
                ], 200);
            } else {
                return response()->json([
                    "message" => "Failed to save title",
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

    public function publishedTitle(){
        $title = ServiceArticleTitle::where('is_publish', true)->first();
        if(!$title){
            return response()->json([
                'message'=>'No title found',
                'success'=>false
            ]);
        }
        return response()->json([
            "data" => $title,
            "success" => true
        ], 200);
    }
}
