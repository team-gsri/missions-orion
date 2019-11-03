// Reference car
_pos = selectRandom [
	[[5403.24,6854.11,0], 39],
	[[5470.79,7003.03,0], 328],
	[[5492.15,7011.81,0], 237],
	[[5533.81,6974.98,0], 34],
	[[5577.85,7048.69,0], 189],
	[[5572.34,6990.8,0], 152],
	[[5672.38,6987.83,0], 0]
];
_car = "O_LSV_02_unarmed_F" createVehicle (_pos select 0);
_car setDir (_pos select 1);
DW_MISSION_TEMP pushBack _car;

// Decorative objects
_sides = [
	["Land_PlasticCase_01_medium_F", [-1.54004,1.49365,-1.5921], 0],
	["Land_Sunshade_F", [-1.28906,-0.305176,-1.57965], 0],
	["Land_CampingTable_F", [-2.18799,-1.75,-1.58704], 0],
	["Land_CampingChair_V2_F", [-2.69775,-0.975586,-1.57465], 327]
];
{
	_o = (_x select 0) createVehicle [0,0,0];
	_o setDir ((_pos select 1) + (_x select 2));
	_o setPosATL (_car modelToWorld (_x select 1));
	DW_MISSION_TEMP pushBack _o;
} forEach _sides;

// Data recovery
_recover = {
	params["_computer"];
	_computer animateSource ["Open_Source", 0];
	[
		15,
		[_computer],
		{
			// Success
			params["_args"];
			_computer = _args select 0;
			_computer setVariable ["DW_arudy_success", true];
			_computer animateSource ["Open_Source", 1];
			hint "8.43GB recovered !";
		},
		{
			// Failure
			params["_args"];
			_computer = _args select 0;
			_computer animateSource ["Open_Source", 1];
			hint "Failed to recover 8.43GB !";
		},
		"Recovering 8.43GB..."
	] call ace_common_fnc_progressBar;
};

// Objective
_obj = "Land_MultiScreenComputer_01_closed_sand_F" createVehicle [0,0,0];
DW_MISSION_TEMP pushBack _obj;
_obj setDir ((_pos select 1) + 166);
_obj setPosATL (_car modelToWorld [-1.72656,-1.73389,-0.774414]);
_actionRecover = ["recoverData", "Recover data", "", _recover,{[DW_MISSION_MAIN_TASK] call BIS_fnc_taskState != "SUCCEEDED"}] call ace_interact_menu_fnc_createAction;
[_obj, 0, [], _actionRecover] remoteExecCall ["ace_interact_menu_fnc_addActionToObject", 0, true];

waitUntil {sleep 5; _obj getVariable ["DW_arudy_success", false] };
[DW_MISSION_MAIN_TASK, "SUCCEEDED"] call BIS_fnc_taskSetState;