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
        Schema::create('kompetensi_dasar', function (Blueprint $table) {
            $table->id();
            $table->string('materi_pokok');
            $table->boolean('status');
            $table->text('deskripsi');
            $table->string('kegiatan_pembelajaran');
            $table->string('sumber_pembelajaran');
            $table->unsignedBigInteger('silabus_id');
            $table->timestamps();
            $table->softDeletes();

            $table->foreign('silabus_id')->references('id')->on('silabus')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('kompetensi_dasar');
    }
};
