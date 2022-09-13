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
        Schema::create('penilaian_silabus', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('silabus_id');
            $table->unsignedBigInteger('penilaian_id');
            $table->string('name');
            $table->string('value');
            $table->enum('type', ['pengetahuan', 'keterampilan']);
            $table->timestamps();
            $table->softDeletes();

            $table->foreign('silabus_id')->references('id')->on('silabus')->onDelete('cascade');
            $table->foreign('penilaian_id')->references('id')->on('penilaian')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('penilaian_silabus');
    }
};
