<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        if (!$user) {
            return response()->json([
                "message" => "User not authenticated",
                "success" => false
            ]);
        }
        $userData = $user->only(['name', 'email', 'surname', 'city', 'country', 'phone', 'profile']);
        return response()->json([
            "data" => $userData,
            'success' => true
        ]);
    }

    public function editPersonalInfo(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'surname' => 'required|string|max:255',
            'city' => 'nullable|string|max:255',
            'country' => 'nullable|string|max:255',
            // 'phone' => 'nullable|regex:/^[\+0-9\s\-\(\)]+$/',
            // 'profile'=>'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }

        $user = Auth::user();
        if (!$user) {
            return response()->json([
                "message" => "User not authenticated",
                "success" => false
            ], 401);
        }
        $user->name = $request->name;
        $user->surname = $request->surname;
        $user->city = $request->city;
        $user->country = $request->country;
        $user->phone = $request->phone;
        $old_profile = $user->profile;
        if ($request->hasFile('profile')) {
            $image = $request->file('profile');
            $image_path = $image->store('profile', 'public');
        } else {
            $image_path = $old_profile ?? "profile/userProfile.png";
        }
        $user->profile = $image_path;
        if ($user->save()) {
            return response()->json([
                "data" => $user,
                "message" => "User info updated successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "User info not updated",
                "success" => false
            ], 500);
        }
    }
}
