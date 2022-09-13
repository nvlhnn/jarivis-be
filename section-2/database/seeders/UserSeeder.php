<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

class UserSeeder extends Seeder
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
                    'role_id' => 3,
                    'name' => 'murid ' . $i,
                    'email' => 'murid' . $i . '@gmail.com',
                    'password' => bcrypt('murid'),
                    'role' => 'murid',
                    'is_active' => true,
                    'sekolah_id' => rand(1, 3),
                ],
            );
        };



        DB::table('users')->insert([
            [
                'role_id' => 1,
                'name' => 'admin',
                'email' => 'admin@gmail.com',
                'password' => bcrypt('admin'),
                'role' => 'admin',
                'is_active' => true,
                "sekolah_id" => null
            ], ...$data

        ]);
    }
}
