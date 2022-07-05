<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFornecedoresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('fornecedores', function (Blueprint $table) {
            $table->id();
            $table->string('nomefantasia');
            $table->string('razaosocial');
            $table->timestamp('cnpj');
            $table->string('preposto');
            $table->string('socio1');
            $table->string('socio2');
            $table->string('socio3');
            $table->string('cnaes');
            $table->string('porte');
            $table->timestamp('dtcadastro')->nullable();
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
        Schema::dropIfExists('fornecedores');
    }
}
