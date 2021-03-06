<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index(Request $request)
    {
        //$request->user()->authorizeRoles(['user', 'admin']);
        $request->user()->authorizeRoles(['admin','superAdmin']);
        return view('Admin.home');
    }
}
