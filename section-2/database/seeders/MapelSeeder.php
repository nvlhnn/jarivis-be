<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

class MapelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [];

        for ($i = 1; $i <= 10; $i++) {
            array_push(
                $data,
                [
                    'role_id' => 3,
                    'jenis_mata_pelajaran_id' => rand(1, 3),
                    'name' => 'mapel ' . $i,
                    'deskripsi' => 'mapel ' . $i,
                    'status' => true,
                ],
            );
        };

        DB::table('mata_pelajaran')->insert($data);
    }
}
