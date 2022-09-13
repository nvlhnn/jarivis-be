<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;
class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('roles')->insert([
            [
                'name' => 'admin',
                'deskripsi' => 'admin',
                'status' => true,

            ],
            [
                'name' => 'pengajar',
                'deskripsi' => 'pengajar',
                'status' => true,

            ],
            [
                'name' => 'murid',
                'deskripsi' => 'murid',
                'status' => true,

            ],
            [
                'name' => 'guest',
                'deskripsi' => 'guest',
                'status' => true,

            ],
        ]);
    }
}
