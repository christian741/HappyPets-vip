<?php

namespace App\Http\Controllers;

use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;

use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

use App\Models\User;
use App\Models\Role;

class AuthController extends Controller
{
    /**
     * Registro de usuario
     */
    public function signUp(Request $request)
    {
        /**
         * Validate the data using validation rules
         */
        $rules = array(
            'cedula'=> ['required', 'regex:(^\d{9,11}$)'],
            'name' => ['required', 'string'],
            'lastname' => ['required', 'string'],
            'cellphone' => ['required', 'regex:(^\d{10}$)'],
            'email' => ['required', 'string', 'email', 'unique:users'],
            'password' => ['required', 'string'],
            'img_file' => ['mimes:jpeg,jpg,png,gif']
        );
        $validator = Validator::make($request->all(), $rules);

        /**
         * Check the validation becomes fails or not
         */
        if ($validator->fails()) {
            return redirect('register')
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
            $image_resize->save(public_path('images/users/' . $nameImage));
        }else{
            $nameImage = 'sinfoto.png';
        }
        $bool = true;
       
        $user = User::create([
            'cedula'=> $request->cedula,
            'name' => $request->name,
            'lastname' => $request->lastname,
            'cellphone' =>  $request->cellphone,
            'email' => $request->email,
            'password' => bcrypt($request->password),
            'photo' => $nameImage,
            'estate' => $bool,
        ]);
        $user->roles()->attach(Role::where('name', 'admin')->first());

        return redirect('login')->with('message', 'Registro exitoso');
    }

    /**
     * Inicio de sesión y creación de token
     */
    public function login(Request $request)
    {
        $validated = $request->validate([
            'email' => 'required|string|email',
            'password' => 'required|string',
            'remember_me' => 'boolean'
        ]);

        $credentials = request(['email', 'password']);

        if (!Auth::attempt($credentials)) {
            return redirect('register')
                ->withErrors($validated);
        }
        $user = $request->user();


        if ($user->hasRole('admin')) {
            $tokenResult = $user->createToken('Personal Access Token');
            $token = $tokenResult->token;
            if ($request->remember_me)
                $token->expires_at = Carbon::now()->addWeeks(1);
            $token->save();
            return redirect('/admin');
        } else {
            return redirect('login')
                ->withErrors(['Usuario not found']);
        }
    }

    /**
     * Cierre de sesión (anular el token)
     */
    public function logout(Request $request)
    {

        $user = $request->user();
        foreach ($user->tokens as $token) {
            $token->revoke();
        }
        Auth::logout();
        return redirect('/home');
    }

    /**
     * Obtener el objeto User como json
     */
    public function user(Request $request)
    {
        return response()->json($request->user());
    }

    public function indexLogin(Request $request)
    {
        return view('login');
    }

    public function indexRegister(Request $request)
    {
        return view('register');
    }
}
