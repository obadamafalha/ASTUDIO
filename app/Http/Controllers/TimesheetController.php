<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Timesheet;

class TimesheetController extends Controller
{
    public function index()
    {
        $timesheets = Timesheet::all();
        return response()->json($timesheets);
    }

    public function show($id)
    {
        $timesheet = Timesheet::findOrFail($id);
        return response()->json($timesheet);
    }

    public function store(Request $request)
    {
        $request->validate([
            'task_name' => 'required|string',
            'date' => 'required|date',
            'hours' => 'required|numeric',
            'user_id' => 'required|exists:users,id',
            'project_id' => 'required|exists:projects,id',
        ]);

        $timesheet = Timesheet::create($request->all());
        return response()->json($timesheet, 201);
    }

    public function update(Request $request, $id)
    {
        $timesheet = Timesheet::findOrFail($id);

        $request->validate([
            'task_name' => 'sometimes|string',
            'date' => 'sometimes|date',
            'hours' => 'sometimes|numeric',
            'user_id' => 'sometimes|exists:users,id',
            'project_id' => 'sometimes|exists:projects,id',
        ]);

        $timesheet->update($request->all());
        return response()->json($timesheet);
    }

    public function destroy($id)
    {
        $timesheet = Timesheet::findOrFail($id);
        $timesheet->delete();

        return response()->json(['message' => 'Timesheet deleted successfully']);
    }
}
