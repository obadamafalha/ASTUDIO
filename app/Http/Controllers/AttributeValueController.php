<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AttributeValue;

class AttributeValueController extends Controller
{
    public function index()
    {
        $attributeValues = AttributeValue::all();
        return response()->json($attributeValues);
    }

    public function show($id)
    {
        $attributeValue = AttributeValue::findOrFail($id);
        return response()->json($attributeValue);
    }

    public function store(Request $request)
    {
        $request->validate([
            'attribute_id' => 'required|exists:attributes,id',
            'entity_id' => 'required|exists:projects,id',
            'value' => 'required|string',
        ]);

        $attributeValue = AttributeValue::create($request->all());
        return response()->json($attributeValue, 201);
    }

    public function update(Request $request, $id)
    {
        $attributeValue = AttributeValue::findOrFail($id);

        $request->validate([
            'attribute_id' => 'sometimes|exists:attributes,id',
            'entity_id' => 'sometimes|exists:projects,id',
            'value' => 'sometimes|string',
        ]);

        $attributeValue->update($request->all());
        return response()->json($attributeValue);
    }

    public function destroy($id)
    {
        $attributeValue = AttributeValue::findOrFail($id);
        $attributeValue->delete();

        return response()->json(['message' => 'Attribute value deleted successfully']);
    }
}