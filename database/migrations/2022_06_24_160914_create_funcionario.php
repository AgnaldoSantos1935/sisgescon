<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFuncionario extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('funcionarios', function (Blueprint $table) {
            $table->id();
            $table->string('nome');
            $table->string('dtnascimento');
            $table->timestamp('dt_insercao')->nullable();
            $table->string('rg');
            $table->string('cpf');
            $table->string('matricula');
            $table->string('cargo');
            $table->string('setor');
            $table->string('dtadmissao');
            $table->string('dtdemissao');
            $table->timestamps();

    });
}
 
    public function down()
    {
        Schema::dropIfExists('funcionarios');
    }

    
}