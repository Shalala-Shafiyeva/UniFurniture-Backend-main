<?php

namespace App\Http\Controllers;

use App\Models\Option;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class OptionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $options = Option::with('faqs', 'publish_faqs')->get();
        return response()->json([
            "data" => $options
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
            'name' => 'required|max:255',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }
        $option = new  Option();
        $option->name = $request->name;
        if ($option->save()) {
            return response()->json([
                "data" => $option,
                "message" => "FAQs option created successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "FAQs option not created",
                "success" => false
            ], 500);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $option = Option::find($id);
        return response()->json([
            "data" => $option
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Option $option)
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
        $option = Option::find($id);
        $option->name = $request->name;
        if ($option->save()) {
            return response()->json([
                "data" => $option,
                "message" => "FAQs option updated successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "FAQs option not updated",
                "success" => false
            ], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function delete($id)
    {
        $option = Option::find($id);
        if ($option->delete()) {
            return response()->json([
                "message" => "FAQs option deleted successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "FAQs option not deleted",
                "success" => false
            ], 500);
        }
    }
}
