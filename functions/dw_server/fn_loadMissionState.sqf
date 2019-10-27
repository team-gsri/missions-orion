// Restaure les données de missions sauvegardées

_done = parseSimpleArray (profileNamespace getVariable ["DW_MISSION_DONE", "[]" ]);
_markers = parseSimpleArray (profileNamespace getVariable["DW_MISSION_MARKERS", "[]" ]);
_tasks = parseSimpleArray (profileNamespace getVariable["DW_MISSION_TASKS", "[]" ]);

{
	_marker = [format ["_marker_%1",_x],(_markers select _forEachIndex),"colorIndependent","ELLIPSE",500] call DW_fnc_markerCreation;

	_taskArray = _tasks select _forEachIndex;
	_t = [WEST, [_taskArray select 0]];
	_desc = [
		(_taskArray select 1 select 0 select 0),
		(_taskArray select 1 select 1 select 0),
		_marker
	];
	_t pushBack _desc;
	_t pushBack _marker; // destination
	_t pushBack (_taskArray select 3); // état
	_t pushBack 0; // priorité
	_t pushBack false; // pas de notif
	_t pushBack (_taskArray select 2); // type
	_task = _t call BIS_fnc_taskCreate; //création de la tâche
} forEach _done;