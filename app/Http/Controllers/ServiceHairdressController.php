<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ServiceHairdressController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request)
    {
        $request->user()->authorizeRoles(['admin']);
        return view('Admin.Hairdress.seeServicesHair');
    }
    public function viewCreate(Request $request)
    {
        $request->user()->authorizeRoles(['admin']);
        return view('Admin.Hairdress.createHairPets');
    }
    public function registerServiceHair(Request $request){
        
        return view('Admin.Hairdress.createHairPets');
    }

    
}
