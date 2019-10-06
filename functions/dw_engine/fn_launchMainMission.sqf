//exec: server
//instance: unique

if(false) exitWith {systemChat "Not implemented yet"};

private ["_found", "_found_counter", "_mission", "_mission_name", "_zone"];
_found = false;
_found_counter = 0;

// --------------------------------------------- MISSION SELECTION ---------------------------------------------
while {!_found && _found_counter < 1000} do 
{
	_fob = selectRandom DW_LISTE_FOB;
	_num_fob = -1;
	_zone = switch (_fob) do 
	{
		case "moray": { _num_fob = 0; selectRandom DW_LISTE_FOB_MORAY };
		case "nord": { _num_fob = 1; selectRandom DW_LISTE_FOB_NORD };
		case "montagne": { _num_fob = 2; selectRandom DW_LISTE_FOB_MONTAGNE };
		case "sud": { _num_fob = 3; selectRandom DW_LISTE_FOB_SUD };
		case "ile": { _num_fob = 4; selectRandom DW_LISTE_FOB_ILE };
	};
	_num = ["main",_fob,_zone] call DW_fnc_getRandomMissionNumber;
	_mission_name = format["%1%2", _zone, _num];
	_found_counter = _found_counter + 1;
	if(!(_zone in (DW_MISSION_DONE select _num_fob)) && (DW_MISSION_FOBS select _num_fob isEqualTo "LOCKED")) then
	{
		DW_MISSION_NUM_FOB = _num_fob;
		_mission = format["fob\%1\main\%2\%3.sqf", _fob, _zone, _mission_name];
		_found = true;
		systemChat str _mission;
	};
};
if(_found_counter == 1000) exitWith { ["Impossible de trouver une mission jouable"] call DW_fnc_showGlobalMissionError };




// --------------------------------------------- EXECUTION DE LA MISSION ---------------------------------------------

// Création du handle et exécution
_handle = execVM _mission;

if(isNil "_handle") then
{
	[format["Le lancement de %1 a lamentablement échoué", _mission_name]] call DW_fnc_showGlobalMissionError;
} else {
	DW_MISSION_STARTED = true;
	publicVariable "DW_MISSION_STARTED";
	waitUntil{ !(DW_MISSION_POSITION isEqualTo [0,0]) && (DW_MISSION_NUM_FOB!=-1) };
	_marker_mission = [format ["_marker_mission_%1",_zone],DW_MISSION_POSITION,"colorOPFOR","ELLIPSE",500] call DW_fnc_markerCreation;
	sleep 3; //temps pour initialiser la mission
	

	// Population ennemie
	call DW_fnc_populateZone;
	
	if(count allGroups >= 250) then { ["Nombre de groupes existants a atteint 250"] call DW_fnc_showGlobalMissionError; };

	// Attente de la fin de la mission
	waitUntil{scriptDone _handle};

	// Création du trigger de controle
	_trigger = createTrigger ["EmptyDetector", DW_MISSION_POSITION, false];
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
	_marker_mission setMarkerColor "colorIndependent";
	{ [_x] call BIS_fnc_deleteTask } forEach ([DW_MISSION_MAIN_TASK] call BIS_fnc_taskChildren);
	// Updating monitors
	[DW_MISSION_NUM_FOB, "DONE", _zone, _marker_mission, DW_MISSION_MAIN_TASK] call DW_fnc_updateStatus;
	DW_MISSION_POSITION = [0,0];
	DW_MISSION_MAIN_TASK = "";
	DW_MISSION_NUM_FOB = -1;
	deleteVehicle _trigger;
	DW_MISSION_STARTED = false;
	publicVariable "DW_MISSION_STARTED";

	// Sauvegarde de l'état
	call DW_fnc_saveMissionState
};
