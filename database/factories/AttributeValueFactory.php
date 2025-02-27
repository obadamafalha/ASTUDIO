<?php

namespace Database\Factories;

use App\Models\AttributeValue;
use Illuminate\Database\Eloquent\Factories\Factory;

class AttributeValueFactory extends Factory
{
    protected $model = AttributeValue::class;

    public function definition()
    {
        return [
            'attribute_id' => $this->faker->numberBetween(1, 5), // Assuming 5 attributes exist
            'entity_id' => $this->faker->numberBetween(1, 5), // Assuming 5 projects exist
            'value' => $this->faker->word,
        ];
    }
}
