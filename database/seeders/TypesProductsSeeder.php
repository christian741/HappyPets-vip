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
        $typeProduct->name = 'Venta';
        $typeProduct->description = 'Ventas';
        $typeProduct->save();
        $typeProduct = new TypesProduct();
        $typeProduct->name = 'Inventario';
        $typeProduct->description = 'Inventario';
        $typeProduct->save();

    }
}
