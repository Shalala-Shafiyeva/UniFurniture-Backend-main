<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\AboutBanner;
use App\Models\AboutNumberSubtitle;
use App\Models\AboutNumberTitle;
use App\Models\AboutParalax;
use App\Models\AboutTeamMember;
use App\Models\AboutTeamTitle;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;

class AboutController extends Controller
{
    public function createBanner(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|max:255',
            'content' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $image_path = $image->store('aboutbanner', 'public');
        }
        $banner = new  AboutBanner();
        $banner->title = $request->title;
        $banner->content = strip_tags($request->content);
        $banner->image = $image_path;
        if ($banner->save()) {
            return response()->json([
                "data" => $banner,
                "message" => "About banner created successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "About banner not created",
                "success" => false
            ], 500);
        }
    }

    public function getBanners()
    {
        $banners = AboutBanner::all();
        return response()->json([
            "data" => $banners
        ], 200);
    }

    public function deleteBanner($id)
    {
        $banner = AboutBanner::find($id);
        if ($banner->delete()) {
            return response()->json([
                "message" => "About banner deleted successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "About banner not deleted",
                "success" => false
            ], 500);
        }
    }

    public function getBanner($id)
    {
        $banner = AboutBanner::find($id);
        return response()->json([
            "data" => $banner
        ], 200);
    }

    public function editBanner(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|max:255',
            'content' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }

        $banner = AboutBanner::find($id);
        $banner->title = $request->title;
        $banner->content = strip_tags($request->content);
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $image_path = $image->store('aboutbanner', 'public');
            $banner->image = $image_path;
        }
        if ($banner->save()) {
            return response()->json([
                "data" => $banner,
                "message" => "About banner updated successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "About banner not updated",
                "success" => false
            ], 500);
        }
    }

    public function publishBanner($id)
    {
        try {
            $banners = AboutBanner::where('is_publish', true)->get();
            if ($banners) {
                foreach ($banners as $banner) {
                    $banner->is_publish = false;
                    $banner->save();
                }
            }

            $banner = AboutBanner::find($id);
            if (!$banner) {
                return response()->json([
                    "message" => "Banner not found",
                    "success" => false
                ], 404);
            }

            $banner->is_publish = true;
            if ($banner->save()) {
                return response()->json([
                    "data" => $banner,
                    "message" => "About banner published successfully",
                    "success" => true
                ], 200);
            } else {
                return response()->json([
                    "message" => "Failed to save banner",
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

    public function publishedBanner(){
        $banners = AboutBanner::where('is_publish', true)->first();
        if(!$banners){
            return response()->json([
                'message'=>'No banner found',
                'success'=>false
            ]);
        }
        return response()->json([
            "data" => $banners,
            "success" => true
        ], 200);
    }

    public function createParalax(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|max:255',
            'content' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $image_path = $image->store('aboutparalax', 'public');
        }
        $paralax = new  AboutParalax();
        $paralax->title = $request->title;
        $paralax->content = $request->content;
        $paralax->image = $image_path;
        if ($paralax->save()) {
            return response()->json([
                "data" => $paralax,
                "message" => "About paralax created successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "About paralax not created",
                "success" => false
            ], 500);
        }
    }

    public function getParalaxes()
    {
        $paralaxes = AboutParalax::all();
        return response()->json([
            "data" => $paralaxes
        ], 200);
    }

    public function deleteParalax($id)
    {
        $paralax = AboutParalax::find($id);
        if ($paralax->delete()) {
            return response()->json([
                "message" => "About paralax deleted successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "About paralax not deleted",
                "success" => false
            ], 500);
        }
    }

    public function getParalax($id)
    {
        $paralax = AboutParalax::find($id);
        return response()->json([
            "data" => $paralax
        ], 200);
    }

    public function editParalax(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|max:255',
            'content' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }

        $paralax = AboutParalax::find($id);
        $paralax->title = $request->title;
        $paralax->content = $request->content;
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $image_path = $image->store('aboutparalax', 'public');
            $paralax->image = $image_path;
        }
        if ($paralax->save()) {
            return response()->json([
                "data" => $paralax,
                "message" => "About paralax updated successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "About paralax not updated",
                "success" => false
            ], 500);
        }
    }

    public function publishParalax($id)
    {
        try {
            $paralaxes = AboutParalax::where('is_publish', true)->get();
            if ($paralaxes) {
                foreach ($paralaxes as $paralax) {
                    $paralax->is_publish = false;
                    $paralax->save();
                }
            }

            $paralax = AboutParalax::find($id);
            if (!$paralax) {
                return response()->json([
                    "message" => "Paralax not found",
                    "success" => false
                ], 404);
            }

            $paralax->is_publish = true;
            if ($paralax->save()) {
                return response()->json([
                    "data" => $paralax,
                    "message" => "About paralax published successfully",
                    "success" => true
                ], 200);
            } else {
                return response()->json([
                    "message" => "Failed to save paralax",
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

    public function publishedParalax(){
        $paralax = AboutParalax::where('is_publish', true)->first();
        if(!$paralax){
            return response()->json([
                'message'=>'No paralax found',
                'success'=>false
            ]);
        }
        return response()->json([
            "data" => $paralax,
            "success" => true
        ], 200);
    }

    public function createTeamTitle(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|max:255',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }

        $teamTitle = new  AboutTeamTitle();
        $teamTitle->title = $request->title;
        if ($teamTitle->save()) {
            return response()->json([
                "data" => $teamTitle,
                "message" => "About title created successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "About title not created",
                "success" => false
            ], 500);
        }
    }

    public function getTeamTitles()
    {
        $titles = AboutTeamTitle::all();
        return response()->json([
            "data" => $titles
        ], 200);
    }

    public function getTeamTitle($id)
    {
        $title = AboutTeamTitle::find($id);
        return response()->json([
            "data" => $title
        ], 200);
    }

    public function deleteTeamTitle($id)
    {
        $title = AboutTeamTitle::find($id);
        if ($title->delete()) {
            return response()->json([
                "message" => "About title deleted successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "About title not deleted",
                "success" => false
            ], 500);
        }
    }

    public function editTeamTitle(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|max:255',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }

        $title = AboutTeamTitle::find($id);
        $title->title = $request->title;
        if ($title->save()) {
            return response()->json([
                "data" => $title,
                "message" => "About title updated successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "About title not updated",
                "success" => false
            ], 500);
        }
    }

    public function publishTitle($id)
    {
        try {
            $published_title = AboutTeamTitle::where('is_publish', true)->get();
            if ($published_title) {
                foreach ($published_title as $title) {
                    $title->is_publish = false;
                    $title->save();
                }
            }

            $title = AboutTeamTitle::find($id);
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

    public function publishedTeamTitle(){
        $title = AboutTeamTitle::where('is_publish', true)->first();
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

    public function createTeamMember(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:255',
            'surname' => 'required|max:255',
            'position' => 'required|max:255',
            'profile' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }

        if ($request->hasFile('profile')) {
            $image = $request->file('profile');
            $image_path = $image->store('aboutteammebers', 'public');
        }
        $member = new  AboutTeamMember();
        $member->name = $request->name;
        $member->surname = $request->surname;
        $member->position = $request->position;
        $member->profile = $image_path;
        if ($member->save()) {
            return response()->json([
                "data" => $member,
                "message" => "About member created successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "About member not created",
                "success" => false
            ], 500);
        }
    }

    public function getTeamMembers()
    {
        $members = AboutTeamMember::all();
        return response()->json([
            "data" => $members
        ], 200);
    }

    public function deleteTeamMember($id)
    {
        $member = AboutTeamMember::find($id);
        if ($member->delete()) {
            return response()->json([
                "message" => "About member deleted successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "About member not deleted",
                "success" => false
            ], 500);
        }
    }

    public function getTeamMember($id)
    {
        $member = AboutTeamMember::find($id);
        return response()->json([
            "data" => $member
        ], 200);
    }

    public function editTeamMember(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:255',
            'surname' => 'required|max:255',
            'position' => 'required|max:255',
            'profile' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }

        $member = AboutTeamMember::find($id);

        if ($request->hasFile('profile')) {
            $image = $request->file('profile');
            $image_path = $image->store('aboutteammebers', 'public');
            $member->profile = $image_path;
        }
        $member->name = $request->name;
        $member->surname = $request->surname;
        $member->position = $request->position;
        if ($member->save()) {
            return response()->json([
                "data" => $member,
                "message" => "About member created successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "About member not created",
                "success" => false
            ], 500);
        }
    }

    public function createNumberTitle(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|max:255',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }

        $numberTitle = new  AboutNumberTitle();
        $numberTitle->title = $request->title;
        if ($numberTitle->save()) {
            return response()->json([
                "data" => $numberTitle,
                "message" => "About title created successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "About title not created",
                "success" => false
            ], 500);
        }
    }

    public function getNumberTitles()
    {
        $titles = AboutNumberTitle::all();
        return response()->json([
            "data" => $titles
        ], 200);
    }

    public function getNumberTitle($id)
    {
        $title = AboutNumberTitle::find($id);
        return response()->json([
            "data" => $title
        ], 200);
    }

    public function deleteNumberTitle($id)
    {
        $title = AboutNumberTitle::find($id);
        if ($title->delete()) {
            return response()->json([
                "message" => "About title deleted successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "About title not deleted",
                "success" => false
            ], 500);
        }
    }

    public function editNumberTitle(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|max:255',
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }

        $title = AboutNumberTitle::find($id);
        $title->title = $request->title;
        if ($title->save()) {
            return response()->json([
                "data" => $title,
                "message" => "About title updated successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "About title not updated",
                "success" => false
            ], 500);
        }
    }

    public function publishNumberTitle($id)
    {
        try {
            $published_title = AboutNumberTitle::where('is_publish', true)->get();
            if ($published_title) {
                foreach ($published_title as $title) {
                    $title->is_publish = false;
                    $title->save();
                }
            }

            $title = AboutNumberTitle::find($id);
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

    public function publishedNumberTitle(){
        $title = AboutNumberTitle::where('is_publish', true)->first();
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

    public function createNumberSubtitle(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|max:255',
            'content'=>'required|max:255'
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }

        $numberSubtitle = new  AboutNumberSubtitle();
        $numberSubtitle->title = $request->title;
        $numberSubtitle->content = $request->content;
        if ($numberSubtitle->save()) {
            return response()->json([
                "data" => $numberSubtitle,
                "message" => "About title created successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "About title not created",
                "success" => false
            ], 500);
        }
    }

    public function getNumberSubtitles()
    {
        $titles = AboutNumberSubtitle::all();
        return response()->json([
            "data" => $titles
        ], 200);
    }

    public function getNumberSubtitle($id)
    {
        $title = AboutNumberSubtitle::find($id);
        return response()->json([
            "data" => $title
        ], 200);
    }

    public function deleteNumberSubtitle($id)
    {
        $title = AboutNumberSubtitle::find($id);
        if ($title->delete()) {
            return response()->json([
                "message" => "About title deleted successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "About title not deleted",
                "success" => false
            ], 500);
        }
    }

    public function editNumberSubtitle(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|max:255',
            'content'=>'required|max:255'
        ]);
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors(),
            ], 422);
        }

        $title = AboutNumberSubtitle::find($id);
        $title->title = $request->title;
        $title->content = $request->content;
        if ($title->save()) {
            return response()->json([
                "data" => $title,
                "message" => "About title updated successfully",
                "success" => true
            ], 200);
        } else {
            return response()->json([
                "message" => "About title not updated",
                "success" => false
            ], 500);
        }
    }

    
}
