<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Patrimonios extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patrimonios', function (Blueprint $table) {
            $table->id();
            $table->string('nomeobjeto');
            $table->string('serial');
            $table->timestamp('rpnum')->nullable();
            $table->string('modelo');
            $table->string('dtaquicao');
            $table->string('origem');
            $table->string('estadodeconservacao');
            $table->string('depreciacaoanual');
            $table->string('cores');
            $table->string('tamanho');
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
        Schema::dropIfExists('patrimonios');
    }
}
