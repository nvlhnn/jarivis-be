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
        Schema::create('kompetensi_dasar_point', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('kompetensi_dasar_id');
            $table->unsignedBigInteger('kompetensi_dasar_detail_id');
            $table->string('name');
            $table->timestamps();
            $table->softDeletes();

            $table->foreign('kompetensi_dasar_id')->references('id')->on('kompetensi_dasar')->onDelete('cascade');
            $table->foreign('kompetensi_dasar_detail_id')->references('id')->on('kompetensi_dasar_detail')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('kompetensi_dasar_point');
    }
};
