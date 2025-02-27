<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        $this->call([
            UserSeeder::class,
            ProjectSeeder::class,
            ProjectUserSeeder::class, 
            TimesheetSeeder::class,
            AttributeSeeder::class,
            AttributeValueSeeder::class,
        ]);
    }
}