//exec: server

params["_fob", "_action", ["_zone", ""], ["_marker", ""], ["_task", ""]];
_nombre = -1;

if(_action isEqualTo "INIT") then
{
	// Réinit des missions
	DW_MISSION_DONE set [_fob, []];
	// Réinit des markers
	{ deleteMarker _x } forEach (DW_MISSION_MARKERS select _fob);
	DW_MISSION_MARKERS set [_fob, []];
	// Réinit des tasks
	{ [_x] call BIS_fnc_deleteTask } forEach (DW_MISSION_TASKS select _fob);
	DW_MISSION_TASKS set [_fob, []];
} else {
	// Ajout de la mission
	(DW_MISSION_DONE select _fob) pushBack _zone;
	// Ajout du marker
	(DW_MISSION_MARKERS select _fob) pushBack _marker;
	// Ajout de la MainTask
	(DW_MISSION_TASKS select _fob) pushBack _task;
	// Update du status du FOB si nécessaire
	if(count (DW_MISSION_DONE select _fob) >= 4) then {
		DW_MISSION_FOBS set [_fob, "OPEN"];
		[_fob] call DW_fnc_openFob;
	};
};