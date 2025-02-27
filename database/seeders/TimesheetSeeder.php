<?php

namespace Database\Seeders;

use App\Models\Timesheet;
use Illuminate\Database\Seeder;

class TimesheetSeeder extends Seeder
{
    public function run()
    {
        Timesheet::factory()->count(20)->create();
    }
}
