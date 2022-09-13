<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

class SekolahSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('sekolah')->insert([
            [
                'name' => 'SMA Negeri 1 Sleman',
            ],
            [
                'name' => 'SMA Negeri 2 Sleman',
            ],
            [
                'name' => 'SMA Negeri 3 Sleman',
            ],
        ]);
    }
}
