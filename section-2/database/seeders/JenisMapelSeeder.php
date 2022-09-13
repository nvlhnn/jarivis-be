<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

class JenisMapelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('jenis_mata_pelajaran')->insert([
            [
                'name' => 'ipa',
                'deskripsi' => 'ipa',
                'status' => true,

            ],
            [
                'name' => 'ips',
                'deskripsi' => 'ips',
                'status' => true,

            ],
            [
                'name' => 'bahasa',
                'deskripsi' => 'bahasa',
                'status' => true,

            ],
        ]);
    }
}
