<?php
namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class __user_auth
{

    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param
     *            \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse) $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if (session('auth') == null) {
            return redirect('/portal');
        }
        return $next($request);
    }
}
