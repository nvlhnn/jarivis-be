<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

class PendidikSeeder extends Seeder
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
                    'name' => 'pendidik ' . $i,
                ],
            );
        };

        DB::table('pendidik')->insert($data);
    }
}
