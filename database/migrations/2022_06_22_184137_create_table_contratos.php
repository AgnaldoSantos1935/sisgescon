<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableContratos extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contratos', function (Blueprint $table) {
            $table->id();
            $table->string('numero');
            $table->string('ano');
            $table->timestamp('dt_insercao')->nullable();
            $table->integer('contratada');
            $table->string('objeto');
            $table->string('dtvigencia');
            $table->string('cnpjcontratada');
            $table->integer('fiscal');
            $table->integer('licitacao');
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
        Schema::dropIfExists('contratos');
    }
}
