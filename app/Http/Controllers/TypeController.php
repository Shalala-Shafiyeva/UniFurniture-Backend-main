<?php

namespace App\Http\Controllers;

use App\Models\Type;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class TypeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $types = Type::all();

        if (!$types->isEmpty()) {
            return response()->json([
                "data" => $types
            ], 200);
        }
        return response()->json([
            "message" => "Product types not found",
            "success" => false
        ], 404);
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
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }
        $type = new  Type();
        $type->name = $request->name;
        if ($type->save()) {
            return response()->json([
                "data" => $type,
                "message" => "Product type created successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Product type not created",
                "success" => false
            ], 500);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $type = Type::find($id);
        return response()->json([
            "data" => $type
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Type $type)
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
        $type = Type::find($id);
        $type->name = $request->name;
        if ($type->save()) {
            return response()->json([
                "data" => $type,
                "message" => "Producttype updated successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Product type not updated",
                "success" => false
            ], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function delete($id)
    {
        $type = Type::find($id);
        if ($type->delete()) {
            return response()->json([
                "message" => "Product type deleted successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "Product type not deleted",
                "success" => false
            ], 500);
        }
    }
}
