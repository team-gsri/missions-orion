// Retrieve saved date
_save = parseSimpleArray (profileNamespace getVariable ["DW_SAVE", "[]" ]);

{
	// Retrieve mission ID
	DW_MISSION_DONE pushBack (_x select 0);

	// Retrieve mission metadata
	_cfg = (missionConfigFile >> "DwMissions" >> "MainMissions" >> (_x select 0));
	_rawLocation = (_cfg >> "location") call BIS_fnc_getCfgData;
	_mission_location = [call compile _rawLocation, _rawLocation] select (typeName _rawLocation == "ARRAY");
	_mission_name = (_cfg >> "name") call BIS_fnc_getCfgData;
	_mission_description = (_cfg >> "description") call BIS_fnc_getCfgData;
	_mission_type = (_cfg >> "type") call BIS_fnc_getCfgData;
	_mission_marker = [format["marker_%1",_x],_mission_location,"colorIndependent","ELLIPSE",500] call DW_fnc_markerCreation;
	_task_identifier = format["task_%1", _x];

	// Restore mission task
	[
		WEST,
		[_task_identifier],
		[_mission_description,_mission_name,_mission_marker],
		_mission_location,
		(_x select 1),
		0,
		false,
		_mission_type
	] call BIS_fnc_taskCreate;
	DW_MISSION_TASKS pushBack _task_identifier;
} forEach _save;