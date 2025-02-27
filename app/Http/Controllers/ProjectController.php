<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Project;
use App\Models\AttributeValue;

class ProjectController extends Controller
{
    public function index(Request $request)
    {
        $query = Project::query();
    
        if ($request->has('filters')) {
            foreach ($request->filters as $field => $value) {
                $query->where($field, $value);
            }
        }
    
        if ($request->has('eav_filters')) {
            foreach ($request->eav_filters as $attribute => $value) {
                $query->whereHas('attributeValues', function ($q) use ($attribute, $value) {
                    $q->where('value', $value)
                      ->whereHas('attribute', function ($q) use ($attribute) {
                          $q->where('name', $attribute);
                      });
                });
            }
        }
    
        $projects = $query->with('attributeValues.attribute')->get();
        return response()->json($projects);
    }

    public function show($id)
    {
        $project = Project::with('attributeValues.attribute')->findOrFail($id);
        return response()->json($project);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string',
            'status' => 'sometimes|string',
            'attributes' => 'sometimes|array',
        ]);

        $project = Project::create($request->only(['name', 'status']));

        if ($request->has('attributes')) {
            foreach ($request->attributes as $attribute) {
                AttributeValue::create([
                    'attribute_id' => $attribute['attribute_id'],
                    'entity_id' => $project->id,
                    'value' => $attribute['value'],
                ]);
            }
        }

        return response()->json($project, 201);
    }

    public function update(Request $request, $id)
    {
        $project = Project::findOrFail($id);

        $request->validate([
            'name' => 'sometimes|string',
            'status' => 'sometimes|string',
            'attributes' => 'sometimes|array',
        ]);

        $project->update($request->only(['name', 'status']));

        if ($request->has('attributes')) {
            foreach ($request->attributes as $attribute) {
                AttributeValue::updateOrCreate(
                    ['attribute_id' => $attribute['attribute_id'], 'entity_id' => $project->id],
                    ['value' => $attribute['value']]
                );
            }
        }

        return response()->json($project);
    }

    public function destroy($id)
    {
        $project = Project::findOrFail($id);
        $project->delete();

        return response()->json(['message' => 'Project deleted successfully']);
    }
}
