<?php

namespace App\Http\Controllers;

use App\Models\Color;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class ColorController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $colors = Color::all();
        return response()->json([
            "data" => $colors
        ], 200);
    }

    public function selectColorCount()
    {
        $colorProductCount = Color::select(DB::raw('count(id) as count, name'))
            ->groupBy('name')
            ->get();

        return response()->json([
            'data' => $colorProductCount,
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
            'name' => 'required|max:255|unique:colors',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }

        $color = new  Color();
        $color->name = $request->name;
        if ($color->save()) {
            return response()->json([
                "data" => $color,
                "message" => "Product color created successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Product color not created",
                "success" => false
            ], 500);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $color = Color::find($id);
        return response()->json([
            "data" => $color
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Color $color)
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
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }
        $color = Color::find($id);
        $color->name = $request->name;
        if ($color->save()) {
            return response()->json([
                "data" => $color,
                "message" => "Product color updated successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Product color not updated",
                "success" => false
            ], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function delete($id)
    {
        $color = Color::find($id);
        if ($color->delete()) {
            return response()->json([
                "message" => "Product color deleted successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Product color not deleted",
                "success" => false
            ], 500);
        }
    }
}
