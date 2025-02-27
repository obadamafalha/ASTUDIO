<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory; 

class AttributeValue extends Model
{
    use  HasFactory; 

    protected $fillable = [
        'attribute_id',
        'entity_id', // Project ID
        'value',
    ];

    // Relationships
    public function attribute()
    {
        return $this->belongsTo(Attribute::class);
    }

    public function project()
    {
        return $this->belongsTo(Project::class, 'entity_id');
    }
}
