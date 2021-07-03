<?php

namespace Database\Seeders;
use App\Models\TypesProduct;
use Illuminate\Database\Seeder;

class TypesProductsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $typeProduct = new TypesProduct();
        $typeProduct->name = 'sells';
        $typeProduct->description = 'Ventas';
        $typeProduct->save();
        $typeProduct = new TypesProduct();
        $typeProduct->name = 'inventory';
        $typeProduct->description = 'Inventario';
        $typeProduct->save();
    }
}
