<?php

namespace App\Http\Controllers;

use App\Models\UserAddress;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class UserAddressController extends Controller
{
    public function index()
    {
        $userId = Auth::id();
        $addresses = UserAddress::where('user_id', $userId)->get();
        if (!$userId) {
            return response()->json([
                "message" => 'User not authenticated',
                'success' => false
            ]);
        }
        return response()->json([
            "data" => $addresses,
            'success' => true
        ]);
    }

    public function show($id)
    {
        $address = UserAddress::find($id);
        if (!$address) {
            return response()->json([
                "message" => "Address is not found",
                'success' => false
            ]);
        }
        return response()->json([
            "data" => $address,
            'success' => true
        ]);
    }
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'address' => 'required|string|max:255|min:3',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }
        $userId = Auth::id();
        // if (!$userId) {
        //     return response()->json([
        //         "message" => 'User not authenticated',
        //         'success' => false
        //     ]);
        // }
        $address = new UserAddress();
        $address->user_id = $userId;
        $address->address = $request->address;
        $address->save();
        return response()->json([
            "data" => $address,
            'success' => true
        ]);
    }
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'address' => 'required|string|max:255|min:3',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }
        $address = UserAddress::find($id);
        if (!$address) {
            return response()->json([
                "message" => 'Address not found',
                'success' => false
            ]);
        }
        $address->address = $request->address;
        $address->save();
        return response()->json([
            "data" => $address,
            'success' => true
        ]);
    }
    public function delete($id)
    {
        $address = UserAddress::find($id);
        if (!$address) {
            return response()->json([
                "message" => 'Address not found',
                'success' => false
            ]);
        }
        $address->delete();
        return response()->json([
            "data" => $address,
            'success' => true
        ]);
    }

    public function default($id)
    {
        $addresses = UserAddress::where('user_id', Auth::id())->get();
        $address = UserAddress::find($id);
        if (!$address) {
            return response()->json([
                "message" => 'Address not found',
                'success' => false
            ]);
        }

        foreach ($addresses as $a) {
            $a->is_default = false;
            $a->save();
        }
        $address->is_default = true;
        $address->save();
        return response()->json([
            "data" => $address,
            'success' => true
        ]);
    }

    public function showDefaultAddress()
    {
        $address = UserAddress::where('is_default', true)->first();
        if (!$address) {
            return response()->json([
                "message" => 'Choose delivery address',
                'success' => false
            ]);
        }
        return response()->json([
            "data" => $address,
            'success' => true
        ]);
    }
}
