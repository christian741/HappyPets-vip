<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = new User();
        $user->cedula = '1007156489';
        $user->name = 'Danna';
        $user->lastname = 'Cardona';
        $user->email = 'dk1007156489@gmail.com';
        $user->password = '123456';
        $user->photo ='sinfoto.png';
        $user->save();
    }
}
