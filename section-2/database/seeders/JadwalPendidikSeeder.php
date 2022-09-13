<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

class JadwalPendidikSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [];
        for ($i = 1; $i <= 25; $i++) {
            array_push(
                $data,
                [
                    'sekolah_id' => rand(1, 3),
                    'pendidik_id' => rand(1, 25),
                    'jenis_mata_pelajaran_id' => rand(1, 3),
                    'mata_pelajaran_id' => rand(1, 10),
                    'deskripsi' => 'jadwal ' . $i,
                    'status' => true,
                ],
            );
        };

        DB::table('jadwal_pendidik')->insert($data);
    }
}
