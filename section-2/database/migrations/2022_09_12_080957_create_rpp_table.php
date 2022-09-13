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
        Schema::create('rpp', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('sekolah_id');
            $table->unsignedBigInteger('kelas_id');
            $table->unsignedBigInteger('pendidik_id');
            $table->unsignedBigInteger('jenis_mata_pelajaran_id');
            $table->unsignedBigInteger('mata_pelajaran_id');
            $table->unsignedBigInteger('kompetensi_dasar_id');
            $table->unsignedBigInteger('pertemuan_id');
            $table->integer('alokasi_waktu');
            $table->string('materi');
            $table->string('tujuan');
            $table->string('kegiatan');
            $table->string('alat');
            $table->string('sumber');
            $table->string('pendahuluan');
            $table->string('kegiatan_inti');
            $table->string('penutupan');
            $table->string('penilaian');
            $table->boolean('status');
            $table->timestamps();
            $table->softDeletes();

            $table->foreign('sekolah_id')->references('id')->on('sekolah')->onDelete('cascade');
            $table->foreign('kelas_id')->references('id')->on('kelas')->onDelete('cascade');
            $table->foreign('pendidik_id')->references('id')->on('pendidik')->onDelete('cascade');
            $table->foreign('jenis_mata_pelajaran_id')->references('id')->on('jenis_mata_pelajaran')->onDelete('cascade');
            $table->foreign('mata_pelajaran_id')->references('id')->on('mata_pelajaran')->onDelete('cascade');
            $table->foreign('kompetensi_dasar_id')->references('id')->on('kompetensi_dasar')->onDelete('cascade');
            $table->foreign('pertemuan_id')->references('id')->on('pertemuan')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rpp');
    }
};
