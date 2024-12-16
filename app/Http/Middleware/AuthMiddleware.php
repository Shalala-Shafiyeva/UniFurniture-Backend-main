<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class AuthMiddleware
{
    public function handle(Request $request, Closure $next)
    {
        // eger user login olmayibsa
        if (!Auth::check()) {
            return response()->json(['message' => 'Unauthorized. Please log in.'], 401);
        }

        return $next($request);
    }
}
