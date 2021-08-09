<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePetsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pets', function (Blueprint $table) {
            $table->id();
            $table->string('namepet');
            $table->string('cellphone');
            $table->string('raza');
            $table->date('age');
            $table->string('genere');
            $table->string('address');
            $table->string('observations');
            $table->string('photo')->nullable();
            $table->boolean('vacunes');
            $table->boolean('desparasitation');
            $table->boolean('esterilization');
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
        Schema::dropIfExists('pets');
    }
}
