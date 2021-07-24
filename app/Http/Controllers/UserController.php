<?php

namespace App\Http\Controllers;

use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

use App\Models\User;
use App\Models\Role;

class UserController extends Controller
{
    /**
     * Registro de usuario
     */
    public function createUser(Request $request)
    {
        /**
         * Validate the data using validation rules
         */
        $rules = array(
            'cedula'=> ['require','regex:(^\d{9,11}$)'],
            'name' => ['required', 'string'],
            'lastname' => ['required', 'string'],
            'cellphone' => ['required', 'regex:(^\d{10}$)'],
        );
        $validator = Validator::make($request->all(), $rules);

        /**
         * Check the validation becomes fails or not
         */
        if ($validator->fails()) {
            return redirect('registerCustomer')
                ->withErrors($validator);
        }
        $nameImage = 'sinfoto.png';
        $bool = true;
       
        $user = User::create([
            'cedula' => $request->cedula,
            'name' => $request->name,
            'lastname' => $request->lastname,
            'cellphone' =>  $request->cellphone,
            'email' => $request->cedula.'@HappyPets.com',
            'password' => bcrypt('123456'),
            'photo' => $nameImage,
            'estate' => $bool,
        ]);
        $user->roles()->attach(Role::where('name', 'customer')->first());

        return redirect('registerCustomer')->with('message', 'Registro exitoso');
    }
    public function editView($id)
    {
        $user= User::findOrFail($id);
        return view('.edit', compact('user'));
    }

    public function show($id)
    {
        return view('user.profile', [
            'user' => User::findOrFail($id)
        ]);
    }

    public function deleteUser(Request $request,$id)
    {

    }
    public function getAllUser(Request $request)
    {
        $cedula  = $request->get('cedula_customer');
        $relacionEloquent = 'customer';
       
        $customers = DB::select('select * from users INNER JOIN role_user on users.id = role_user.user_id AND role_user.role_id = 5 ');
        $customers = User::wherehas(['roles', function ($query){
            $query->where('role_user.role_id','=','5');
        }]);
        $customers = $customers->paginate(10);
        
        /**/
        return view('Admin.Customers.paginationCustomers', compact('customers'));
    }
    public function getUserId(Request $request)
    {

    }
}
