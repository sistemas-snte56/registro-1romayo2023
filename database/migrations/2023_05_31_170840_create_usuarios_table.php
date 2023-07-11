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
        Schema::create('usuario', function (Blueprint $table) {
            $table->id();
            $table->string('nombre',150);
            $table->string('apaterno',150);
            $table->string('amaterno',150);
            $table->string('curp',50);
            $table->string('rfc',50);
            $table->unsignedBigInteger('id_genero');
            $table->string('telefono',20);
            $table->string('email',50);
            $table->string('npersonal',50)->unique();
            $table->unsignedBigInteger('id_nivel');
            $table->unsignedBigInteger('id_delegacion');
            $table->unsignedBigInteger('id_users');
            // $table->unsignedBigInteger('id_users')->nullable()->default(null);;
            $table->string('slug',150)->nullable();
            $table->string('folio',50);
            $table->string('codigo',150);
            $table->timestamps();

            $table->foreign('id_genero')->references('id')->on('genero');
            $table->foreign('id_nivel')->references('id')->on('niveles');
            $table->foreign('id_delegacion')->references('id')->on('delegaciones');
            $table->foreign('id_users')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('usuarios');
    }
};
