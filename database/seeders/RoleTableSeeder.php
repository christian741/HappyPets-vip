<?php

namespace Database\Seeders;


use App\Models\Role;
use App\Models\RoleUser;
use Illuminate\Database\Seeder;

class RoleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $role = new Role();
        $role->name = 'superAdmin';
        $role->description = 'Administrator';
        $role->save();
        $role = new Role();
        $role->name = 'admin';
        $role->description = 'Administrator';
        $role->save();
        $role = new Role();
        $role->name = 'user';
        $role->description = 'Usuario';
        $role->save();
        $role = new Role();
        $role->name = 'hairdress';
        $role->description = 'Peluquera';
        $role->save();
        $role = new Role();
        $role->name = 'customer';
        $role->description = 'Cliente';
        $role->save();

        $role = new RoleUser();
        $role->role_id = 1;
        $role->user_id = 1;
        $role->save();

        $role = new RoleUser();
        $role->role_id = 1;
        $role->user_id = 2;
        $role->save();
    }
}
