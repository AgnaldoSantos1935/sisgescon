<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDiariasePassagensTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('diariase_passagens', function (Blueprint $table) {
                $table->id();
                $table->string('numeroprd');
                $table->string('ano');
                $table->timestamp('dtinclusao')->nullable();
                $table->string('favorecido');
                $table->string('itnerario');
                $table->string('dtpartida');
                $table->string('dtchegada');
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
        Schema::dropIfExists('diariase_passagens');
    }
}
