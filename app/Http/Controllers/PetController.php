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
      if($request->cedula){
        if(strcmp($request->cedula,auth()->user()->cedula) == 0){
          $user = null;
        }else{
          $user = User::Where('cedula',$request->cedula)->first();
        }
      }else{
        $user = null;
      }
      return view('Admin.Hairdress.createPets', compact('user'));         
    }
    public function createPets(Request $request){
      /**
         * Validate the data using validation rules
         */
        $today = date("d-m-Y");
        $starDate = strtotime('-20 years', strtotime($today));
        $starDate = date('d-m-Y', $starDate);
        $endDate = strtotime('-2 months', strtotime($today));
        $endDate = date('d-m-Y', $endDate);
        $inputs = array(
          'start_date' => $starDate,
          'end_date'   => $endDate
        );
        $rules = array(
          'cellphone'=> ['require','regex:(^\d{10}$)'],
          'namepet' => ['required', 'string'],
          'raza' => ['required', 'string'],
          'age' => ['required','date','before:end_date','after:start_date'],
          'genere'=>['required'],
          'address'=>['required','min:5'],
          'vacunes'=>['required'],
          'desparasitation'=>['required'],
          'esterilization'=>['required']
      );
      $validator = Validator::make($request->all(), $rules);
       /**
         * Check the validation becomes fails or not
         */
      if ($validator->fails()) {
          return redirect('createPets')
              ->withErrors($validator);
      }
      $nameImage = "";
        if($request->img_file!=null){
            $image_resize = Image::make($request->img_file->getRealPath());
            $image_resize->resize(400, null, function ($constraint) {
                $constraint->aspectRatio();
                $constraint->upsize();
            });
            $image_resize->orientate();
            $nameImage = time() . "." . $request->img_file->getClientOriginalName();
            $image_resize->save(public_path('images/pets/' . $nameImage));
        }else{
            $nameImage = 'sinfoto.png';
        }
      $pet = Pet::create([
        'namepet'=>$request->namepet,
        'cellphone'=> $request->cellphone,
        'raza'=> $request->raza,
        'age'=> $request->age,
        'genere'=> $request->genere,
        'address'=> $request->address,
        'observations'=> $request->observations,
        'photo'=> $request->photo,
        'vacunes'=> $request->vacunes,
        'desparasitation'=> $request->desparasitation,
        'esterilization'=> $request->esterilization
      ]);
      return redirect('registerCustomer')->with('message', 'Registro exitoso');
    }
}
