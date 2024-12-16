<?php

namespace App\Http\Controllers;

use App\Models\FAQ;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class FAQController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $faqs = FAQ::with('option')->get();
        return response()->json([
            'data' => $faqs,
            'success' => true
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
            'question' => 'required|string|max:255',
            'answer' => 'required|string',
            'option_id' => "required|numeric|exists:options,id"
        ]);
        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'errors' => $validator->errors()
            ], 422);
        }

        $faq = new FAQ();
        $faq->question = $request->question;
        $faq->answer = $request->answer;
        $faq->option_id = $request->option_id;

        if (!$faq->save()) {
            return response()->json([
                'message' => 'FAQ creation error',
                'success' => false
            ], 500);
        }

        return response()->json([
            'data' => $faq,
            'message' => 'FAQ is created successfully',
            'success' => true
        ], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $faq = FAQ::find($id);
        return response()->json([
            "data" => $faq,
            "message" => "FAQ found",
            "success" => true
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(FAQ $faq)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'question' => 'required|string|max:255',
            'answer' => 'required|string',
            'option_id' => "required|numeric|exists:options,id"
        ]);
        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'errors' => $validator->errors()
            ], 422);
        }

        $faq = FAQ::find($id);
        if (!$faq) {
            return response()->json([
                "message" => "FAQ not found",
                'success' => false
            ], 404);
        }
        $faq->question = $request->question;
        $faq->answer = $request->answer;
        $faq->option_id = $request->option_id;

        if (!$faq->save()) {
            return response()->json([
                'message' => 'FAQ editing error',
                'success' => false
            ], 500);
        }

        return response()->json([
            'data' => $faq,
            'message' => 'FAQ is created successfully',
            'success' => true
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $faq = FAQ::find($id);
        if (!$faq) {
            return response()->json([
                "message" => "FAQ not found",
                'success' => false
            ], 404);
        }
        $faq->delete();
        return response()->json([
            "message" => "FAQ deleted successfully",
            'success' => true
        ], 202);
    }

    public function publishFaq($id)
    {
        $faq = FAQ::find($id);
        if (!$faq) {
            return response()->json([
                "message" => "FAQ not found",
                'success' => false
            ], 404);
        }
        $faq->is_active = !$faq->is_active;
        $faq->save();
        return response()->json([
            "message" => "FAQ published successfully",
            'success' => true
        ], 202);
    }

    public function publishedFaqs()
    {
        $faqs = FAQ::with('option')->where("is_active", true)->get();
        return response()->json([
            'data' => $faqs,
            "message" => 'Published FAQs',
            'success' => true
        ]);
    }
}
