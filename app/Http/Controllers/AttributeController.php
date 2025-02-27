<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Attribute;

class AttributeController extends Controller
{
    public function index()
    {
        $attributes = Attribute::all();
        return response()->json($attributes);
    }

    public function show($id)
    {
        $attribute = Attribute::findOrFail($id);
        return response()->json($attribute);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string',
            'type' => 'required|in:text,date,number,select',
        ]);

        $attribute = Attribute::create($request->all());
        return response()->json($attribute, 201);
    }

    public function update(Request $request, $id)
    {
        $attribute = Attribute::findOrFail($id);

        $request->validate([
            'name' => 'sometimes|string',
            'type' => 'sometimes|in:text,date,number,select',
        ]);

        $attribute->update($request->all());
        return response()->json($attribute);
    }

    public function destroy($id)
    {
        $attribute = Attribute::findOrFail($id);
        $attribute->delete();

        return response()->json(['message' => 'Attribute deleted successfully']);
    }
}