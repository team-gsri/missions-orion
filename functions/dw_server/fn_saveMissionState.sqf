// Sérialise les données de missions terminées

if(!isServer) exitWith {};

// Zones de missions effectuées, tableau 2D de strings, sérialisation directe
profileNamespace setVariable ["DW_MISSION_DONE", str DW_MISSION_DONE];

// Markers, on extrait le num de fob associé et la position, et on balance tout dans un 2D de strings
_markers = [];
{
	_markers pushBack getMarkerPos _x;
} forEach DW_MISSION_MARKERS;
profileNamespace setVariable ["DW_MISSION_MARKERS", str _markers];

// Tasks, on extrait le num de fob, la description, le type, le statut, et go 2D de strings
_tasks = [];
{
	_tasks pushBack [
		_x call BIS_fnc_taskVar,
		_x call BIS_fnc_taskDescription,
		_x call BIS_fnc_taskType,
		_x call BIS_fnc_taskState
	];
} forEach DW_MISSION_TASKS;
profileNamespace setVariable ["DW_MISSION_TASKS", str _tasks];

// Ecriture du fichier
saveProfileNamespace;