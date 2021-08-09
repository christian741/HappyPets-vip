<?php

namespace App\Http\Controllers;
//Data Base
use Illuminate\Support\Facades\DB;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Validator;
use App\Models\Pet;
use App\Models\User;
use Illuminate\Http\Request;

class PetController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index(Request $request)
    {
          //$request->user()->authorizeRoles(['admin']);
          $user = User::findOrFail($request->cedula);
          if($user!=null){
            return view('Admin.Hairdress.createPets', compact('user'));
          }else{
            return view('Admin.Hairdress.createPets');
          }

    }
}