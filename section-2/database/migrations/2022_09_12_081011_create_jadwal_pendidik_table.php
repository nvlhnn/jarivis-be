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
        Schema::create('jadwal_pendidik', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('sekolah_id');
            $table->unsignedBigInteger('pendidik_id');
            $table->unsignedBigInteger('jenis_mata_pelajaran_id');
            $table->unsignedBigInteger('mata_pelajaran_id');
            $table->text('deskripsi');
            $table->boolean('status');
            $table->timestamps();
            $table->softDeletes();

            $table->foreign('sekolah_id')->references('id')->on('sekolah')->onDelete('cascade');
            $table->foreign('pendidik_id')->references('id')->on('pendidik')->onDelete('cascade');
            $table->foreign('jenis_mata_pelajaran_id')->references('id')->on('jenis_mata_pelajaran')->onDelete('cascade');
            $table->foreign('mata_pelajaran_id')->references('id')->on('mata_pelajaran')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jadwal_pendidik');
    }
};
