// Reworked Lolisse AA battery

// Meta
_marker = createMarker ["marker_lolisse1", getArray(configFile >> "CfgWorlds" >> worldName >> "Names" >> "Malden_V_Lolisse" >> "position")]; "marker_lolisse1" setMarkerType "Empty";
[WEST,["task_lolisse1"],["Nos aéronefs ne peuvent pas approcher l'île tant que la batterie AA de Lolisse est active. Faites le nécessaire pour la rendre inopérante.","Batterie AA", "marker_lolisse1"],getMarkerPos "marker_lolisse1",true,1,true] call BIS_fnc_taskCreate;
["task_lolisse1","destroy"] call BIS_fnc_taskSetType;
DW_MISSION_MAIN_TASK = "task_lolisse1";
DW_MISSION_POSITION = getMarkerPos "marker_lolisse1";

// Objectives pos array, like [pos_stalker, pos_camonet]
_pos = [
	[[5535.01,11141.2,-0.00265503], [5534.66,11141.2,1.3292]],
	[[5515.86,11213.4,0], [5515.86,11213.4,0]],
	[[5621.6,11232.9,-0.0108109], [5620.81,11231.8,0]]
];
// Objectives type array
_type = [
	["O_APC_Tracked_02_cannon_F","CamoNet_BLUFOR_open_F"],
	["O_APC_Tracked_02_cannon_F","CamoNet_BLUFOR_big_F"],
	["O_APC_Tracked_02_cannon_F","CamoNet_OPFOR_big_F"]
];
// Objectives dir array
_dir = [
	[128,217],
	[306,27],
	[48,55]
];

// Objectives array
_obj = [];

// Slightly randomized stalker spawn (might be 0 but not a problem)
{
	if(random 1 > 0.3) then {
		_aa = (_type select _forEachIndex select 0) createVehicle (_x select 0);
		_aa setDir (_dir select _forEachIndex select 0);
		DW_MISSION_TEMP pushBack _aa;
		_obj pushBack _aa;

		_camonet = (_type select _forEachIndex select 1) createVehicle [0,0,0];
		_camonet enableSimulation false;
		_camonet setDir (_dir select _forEachIndex select 1);
		_camonet setPosATL (_x select 1);
		_camonet enableSimulation true;
		DW_MISSION_TEMP pushBack _camonet;
	};
} forEach _pos;

// Radar spawn
_radar = "O_Radar_System_02_F" createVehicle [5576.69,11192.5,0];
_radar setDir 117;
_obj pushBack _radar;
DW_MISSION_TEMP pushBack _radar;

// Win condition
_isWin = {
	params["_obj"];
	_win = true;
	{ if(alive _x) then { _win = false } } forEach _obj;
	_win
};

waitUntil {sleep 5; [_obj] call _isWin };

deleteMarker "marker_lolisse1";
["task_lolisse1", "SUCCEEDED"] call BIS_fnc_taskSetState;