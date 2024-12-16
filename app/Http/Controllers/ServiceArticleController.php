<?php

namespace App\Http\Controllers;

use App\Models\ServiceArticle;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ServiceArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $articles = ServiceArticle::with('titles')->get();
        return response()->json([
            "data" => $articles,
            "success" => true
        ]);
    }

    public function articlesOfPublishedTitle(){
        $articles = ServiceArticle::with('titles')->get();
        return response()->json([
            "data" => $articles,
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
            'content' => "required",
            'title_id' => "required|numeric|exists:service_article_titles,id"
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }
        $article = new  ServiceArticle();
        $article->title = $request->title;
        $article->content = $request->content;
        $article->article_title_id = $request->title_id;
        if ($article->save()) {
            return response()->json([
                "data" => $article,
                "message" => "Service article created successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Service article not created",
                "success" => false
            ], 500);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $article = ServiceArticle::with('titles')->find($id);
        return response()->json([
            "data" => $article
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ServiceArticle $serviceArticle)
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
            'content' => "required",
            'title_id' => "required|numeric|exists:service_article_titles,id"
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }
        $article = ServiceArticle::find($id);
        $article->title = $request->title;
        $article->content = $request->content;
        $article->article_title_id = $request->title_id;
        if ($article->save()) {
            return response()->json([
                "data" => $article,
                "message" => "Service article updated successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Service article not updated",
                "success" => false
            ], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $article = ServiceArticle::find($id);
        if ($article->delete()) {
            return response()->json([
                "message" => "Service article deleted successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Service article not deleted",
                "success" => false
            ], 500);
        }
    }
}
