<?php

namespace Database\Factories;

use App\Models\Timesheet;
use Illuminate\Database\Eloquent\Factories\Factory;

class TimesheetFactory extends Factory
{
    protected $model = Timesheet::class;

    public function definition()
    {
        return [
            'task_name' => $this->faker->sentence(3),
            'date' => $this->faker->date(),
            'hours' => $this->faker->numberBetween(1, 8),
            'user_id' => $this->faker->numberBetween(1, 10), // Assuming 10 users exist
            'project_id' => $this->faker->numberBetween(1, 5), // Assuming 5 projects exist
        ];
    }
}