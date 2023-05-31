<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('delegaciones', function (Blueprint $table) {
            $table->id();
            $table->string('nomenclatura',150);
            $table->string('delegacion',150)->unique();
            $table->string('nivel',150);
            $table->string('sede',150);
            $table->unsignedBigInteger('id_region');
            $table->timestamps();

            $table->foreign('id_region')->references('id')->on('regiones');   
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('delegaciones');
    }
};
