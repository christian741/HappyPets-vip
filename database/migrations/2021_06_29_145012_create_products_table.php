<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('description')->nullable();
            $table->integer('price');
            $table->integer('quantity');
            $table->integer('total_price');
            $table->integer('percentaje');
            $table->integer('price_sell');
            $table->string('photo');
            $table->unsignedBigInteger('types_products_id');
            $table->foreign('types_products_id')
                ->references('id')
                ->on('types_products')
                ->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
        /*Schema::create('products', function (Blueprint $table) {
            //$table->id();
            $table->dropColumn('name');
            $table->dropColumn('description');
            $table->dropColumn('price');
            $table->dropColumn('quantity');
            $table->dropColumn('total_price');
            $table->dropColumn('photo');
            //$table->timestamps();
        });*/
    }
}
