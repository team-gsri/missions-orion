//loc: server
//instance: unique

if(false) exitWith {systemChat "Not implemented yet"};

private ["_found", "_found_counter", "_candidate"];
_found = false;
_found_counter = 0;

// --------------------------------------------- MISSION SELECTION ---------------------------------------------
while {!_found && _found_counter < 1000} do 
{
	_candidate = selectRandom DW_MISSION_LIST;
	if!(_candidate in DW_MISSION_DONE) then { _found = true	};
	_found_counter = _found_counter + 1;
};
if(_found_counter == 1000) exitWith { ["Impossible de trouver une mission jouable"] call DW_fnc_showGlobalMissionError };

// --------------------------------------------- MISSION METADATA ---------------------------------------------
_cfg = (missionConfigFile >> "DwMissions" >> "MainMissions" >> _candidate);
_rawLocation = (_cfg >> "location") call BIS_fnc_getCfgData;
_mission_location = [call compile _rawLocation, _rawLocation] select (typeName _rawLocation == "ARRAY");
_mission_name = (_cfg >> "name") call BIS_fnc_getCfgData;
_mission_description = (_cfg >> "description") call BIS_fnc_getCfgData;
_mission_type = (_cfg >> "type") call BIS_fnc_getCfgData;
_mission_path = (_cfg >> "path") call BIS_fnc_getCfgData;
_mission_marker = [format["marker_%1",_candidate],_mission_location,"colorOPFOR","ELLIPSE",500] call DW_fnc_markerCreation;
_task_identifier = format["task_%1", _candidate];


// --------------------------------------------- EXECUTION DE LA MISSION ---------------------------------------------

// Création du handle et exécution
_handle = execVM _mission_path;

if(isNil "_handle") then
{
	[format["Le lancement de %1 a lamentablement échoué", _candidate]] call DW_fnc_showGlobalMissionError;
	_mission_marker setMarkerColor "colorUNKNOWN";
} else {
	// Main task
	[WEST,[_task_identifier],[_mission_description,_mission_name,_mission_marker],_mission_location,true,1,true] call BIS_fnc_taskCreate;
	[_task_identifier,_mission_type] call BIS_fnc_taskSetType;
	DW_MISSION_MAIN_TASK = _task_identifier;
	DW_MISSION_POSITION = _mission_location;

	DW_MISSION_STARTED = true;
	publicVariable "DW_MISSION_STARTED";
	sleep 3; //temps pour initialiser la mission
	
	// Population ennemie
	call DW_fnc_populateZone;
	
	if(count allGroups >= 250) then { ["Nombre de groupes existants a atteint 250"] call DW_fnc_showGlobalMissionError };

	// Attente de la fin de la mission
	waitUntil{scriptDone _handle};

	// Création du trigger de controle
	_trigger = createTrigger ["EmptyDetector", _mission_location, false];
	_trigger setTriggerArea [1000, 1000, 0, false];
	_trigger setTriggerActivation ["WEST", "NOT PRESENT", true];
	_trigger setTriggerStatements ["this", "", ""];
	waitUntil{triggerActivated _trigger};

	// Trigger activé, on fait le ménage
	{deleteVehicle _x} forEach DW_MISSION_TEMP;
	DW_MISSION_TEMP = [];
	DW_MISSION_POPULATE = DW_MISSION_POPULATE_DEFAULT;
	DW_MISSION_ALERTE = false;
	sleep 5;
	_mission_marker setMarkerColor "colorIndependent";
	{ [_x] call BIS_fnc_deleteTask } forEach ([_task_identifier] call BIS_fnc_taskChildren);

	// Updating monitors
	DW_MISSION_POSITION = [0,0];
	DW_MISSION_MAIN_TASK = "";
	deleteVehicle _trigger;
	DW_MISSION_STARTED = false;
	publicVariable "DW_MISSION_STARTED";

	// Sauvegarde de l'état
	DW_MISSION_DONE pushBack _candidate;
	DW_MISSION_TASKS pushBack _task_identifier;
	call DW_fnc_saveMissionState
};
