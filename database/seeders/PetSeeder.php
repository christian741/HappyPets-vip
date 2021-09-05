<?php

namespace Database\Seeders;

use App\Models\TypesPets;
use Illuminate\Database\Seeder;

class PetSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $typePets = new TypesPets();
        $typePets->name = 'Gato';
        $typePets->description = 'Felino';
        $typePets->save();
        $typePets = new TypesPets();
        $typePets->name = 'Perro';
        $typePets->description = 'Can';
        $typePets->save();
    }
}
