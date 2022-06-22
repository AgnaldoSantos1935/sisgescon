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
            $table->string('contratada');
            $table->string('objeto');
            $table->string('dtvigencia');
            $table->string('cnpjcontratada');
            $table->string('fiscal');
            $table->string('modalidadelicitacao');
            $table->string('numerolicitacao');
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
