<?php

namespace App\Http\Controllers;

use App\Models\Charasteristic;
use Illuminate\Http\Request;

class CharasteristicController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $charasteristics = Charasteristic::all();
        return response()->json([
            "data" => $charasteristics,
            "success" => true,
            "message" => "Charasteristic fetched successfully"
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
    public function store(Request $request, $productId)
    {
        $characterictic = new Charasteristic();
        $characterictic->characteristic = $request->characteristic;
        $characterictic->product_id = $productId;
        if ($characterictic->save()) {
            return response()->json([
                "data" => $characterictic,
                "message" => "Characteristic created successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Characteristic not created",
                "success" => false
            ], 500);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Charasteristic $charasteristic, $id)
    {
        $characterictic = Charasteristic::find($id);
        return response()->json([
            "data" => $characterictic,
            "success" => true,
            "message" => "Charasteristic fetched successfully"
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Charasteristic $charasteristic)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $characterictic = Charasteristic::find($id);
        $characterictic->characteristic = $request->characteristic;
        if ($characterictic->save()) {
            return response()->json([
                "data" => $characterictic,
                "message" => "Characteristic updated successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Characteristic not updated",
                "success" => false
            ], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function delete($id)
    {
        $characterictic = Charasteristic::find($id);
        if ($characterictic->delete()) {
            return response()->json([
                "message" => "Characteristic deleted successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Characteristic not deleted",
                "success" => false
            ], 500);
        }
    }
}
