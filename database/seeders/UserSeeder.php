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
        $user->password = bcrypt('123456');
        $user->photo ='sinfoto.png';
        $user->estate = true;
        $user->save();
        $user = new User();
        $user->cedula = '1073179018';
        $user->name = 'Christian';
        $user->lastname = 'Diaz';
        $user->email = 'christian.xd.417@gmail.com';
        $user->password = bcrypt('123456');
        $user->photo ='sinfoto.png';
        $user->estate = true;
        $user->save();
    }
}
