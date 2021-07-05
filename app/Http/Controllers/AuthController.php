<?php

namespace App\Http\Controllers;

use Laravel\Passport\HasApiTokens;
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
            'name' => ['required', 'string'],
            'lastname' => ['required', 'string'],
            'cellphone' => ['required', 'regex:(^\d{10}$)'],
            'email' => ['required', 'string', 'email', 'unique:users'],
            'password' => ['required', 'string']
        );
        $validator = Validator::make($request->all(), $rules);

        /**
         * Check the validation becomes fails or not
         */
        if ($validator->fails()) {
            return redirect('register')
                ->withErrors($validator);
        }
        $user = User::create([
            'name' => $request->name,
            'lastname' => $request->lastname,
            'cellphone' =>  $request->cellphone,
            'email' => $request->email,
            'password' => bcrypt($request->password),
            'photo'=> 'hola.png'
        ]);
        $user->roles()->attach(Role::where('name', 'admin')->first());
    

        return redirect('login')->with('message','Registro exitoso');
        /*return response()->json([
            'message' => 'Successfully created user!'
        ], 201);*/
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
