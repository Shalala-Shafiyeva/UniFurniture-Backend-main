<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = Category::all();
        return response()->json([
            "data" => $categories
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
            'name' => 'required|max:255',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }
        $category = new  Category();
        $category->name = $request->name;
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $path = $image->store('categoryBtns', 'public');
        }
        $category->image = $path;
        if ($category->save()) {
            return response()->json([
                "data" => $category,
                "message" => "Product category created successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Product category not created",
                "success" => false
            ], 500);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $category = Category::find($id);
        return response()->json([
            "data" => $category
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Category $category)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:255',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }
        $category = Category::find($id);
        $category->name = $request->name;
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $path = $image->store('categoryBtns', 'public');
        }
        $category->image = $path;
        if ($category->save()) {
            return response()->json([
                "data" => $category,
                "message" => "Producttype updated successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Product category not updated",
                "success" => false
            ], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function delete($id)
    {
        $category = Category::find($id);
        if ($category->delete()) {
            return response()->json([
                "message" => "Product category deleted successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Product category not deleted",
                "success" => false
            ], 500);
        }
    }
}
