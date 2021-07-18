<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

// Import DB and Faker services
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\Date;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(RoleTableSeeder::class);
        $this->call(TypesProductsSeeder::class);
        $this->call(UserSeeder::class);
        $faker = Faker::create();
    	/*foreach (range(1,20) as $index) {
            DB::table('products')->insert([
                'name' => $faker->firstname,
                'description' => $faker->lastname,
                'price' => $faker->numberBetween($min = 1000, $max = 9000) ,
                'total_price' => $faker->numberBetween($min = 1000, $max = 9000) ,
                'quantity' => $faker->numberBetween($min = 1000, $max = 9000),
                'photo'=>$faker->text,
                'types_products_id' => $faker->numberBetween($min = 1, $max = 2) ,
            ]);
        }*/
        /*foreach (range(1,20) as $index) {
            DB::table('users')->insert([
                'name' => $faker->name,
                'lastname' => $faker->name,
                'email'=> $faker->email,
                'password'=> bcrypt('123456'),
                'photo'=>$faker->text
            ]);
        }*/
        /*foreach (range(1,20) as $index) {
            DB::table('role_user')->insert([
                'role_id' => $faker->numberBetween($min = 1, $max = 2),
                'user_id' => $faker->numberBetween($min = 1, $max = 20),
            ]);
        }
        $now = (new \DateTime)->format('Y-m-d');
        foreach (range(1,20) as $index) {
            DB::table('sells')->insert([
                'product_id' => $faker->numberBetween($min = 1, $max = 20),
                'observation' => $faker->text,
                'debt'=> false,
                'price' => $faker->numberBetween($min = 1, $max = 20),
                'quantity' => $faker->numberBetween($min = 1, $max = 20),
                'created_at'=>$now
            ]);
        }
        //User::factory(10)->create();*/
        
    }
}
