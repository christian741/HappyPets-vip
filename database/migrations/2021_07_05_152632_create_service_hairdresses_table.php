<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateServiceHairdressesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('service_hairdresses', function (Blueprint $table) {
            $table->id();
            $table->string('observation');
            $table->integer('price');
            $table->boolean('buns');//Moños
            $table->boolean('shawl');//Pañoletas
            $table->boolean('hygienic');//Higienico
            $table->unsignedBigInteger('pets_id');
            $table->foreign('pets_id')
                ->references('id')
                ->on('pets')
                ->onDelete('cascade');
                $table->unsignedBigInteger('user_id');
                $table->foreign('user_id')
                    ->references('id')
                    ->on('users')
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
        Schema::dropIfExists('service_hairdresses');
    }
}
