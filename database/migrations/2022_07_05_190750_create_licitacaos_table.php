<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLicitacaosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('licitacaos', function (Blueprint $table) {
            $table->id('codlicitacao');
            $table->string('anolicitacao');
            $table->string('modalidade');
            $table->timestamp('dtcertame');
            $table->string('objeto');
            $table->string('valorglobal');
            $table->string('numeroprocesso');
            $table->string('demandante');
            $table->timestamp('dtinsercao')->nullable();
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
        Schema::dropIfExists('licitacaos');
    }
}
