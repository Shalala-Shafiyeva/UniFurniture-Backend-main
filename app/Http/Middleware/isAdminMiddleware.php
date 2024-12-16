<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Symfony\Component\HttpFoundation\Response;

class isAdminMiddleware
{

    public function handle(Request $request, Closure $next): Response
    {
        if (Auth::check()) {
            if (Auth::user()->role == 'admin') {
                Log::info('User ' . Auth::user()->name . ' is admin');
                return $next($request);
            } else {
                Log::info('User ' . Auth::user()->name . ' is user');
                return response()->json(['message' => 'Access denied. Admins only.'], 403);
            }
        } else {
            return response()->json(['message' => 'Unauthorized. Please log in.'], 401);
        }
    }
}

// bu ümumən işləmir yoxsa həmişə bir cavab verir? umumen islemir api terefde kommennte almisam