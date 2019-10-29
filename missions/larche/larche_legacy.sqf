// Main object
_pos = selectRandom [
	[[5870.38,8672.37,0], 193],
	[[6052.86,8771.32,0], 91],
	[[6164.34,8708.31,0], 346],
	[[6148.42,8557.32,0], 79],
	[[5943.24,8585.57,0.0360107], 218],
	[[6034.21,8665.47,0], 18]
];
_obj = "Land_Cargo_House_V3_F" createVehicle (_pos select 0);
_obj setDir (_pos select 1);

// Decorative objects
_sides = [
	["SatelliteAntenna_01_Black_F", [0.13916,1.18262,2.42278], 0],
	["Land_TTowerSmall_1_F", [-3.40186,-0.753906,0], 0],
	["Land_TTowerSmall_2_F", [2.5791,3.53125,0], 0],
	["Land_PowerGenerator_F", [-1.47998,-0.892578,0], 90]
];

{
	_o = (_x select 0) createVehicle [0,0,0];
	_o setDir ((_pos select 1) + (_x select 2));
	_o setPosATL (_obj modelToWorld (_x select 1));
} forEach _sides;

waitUntil {sleep 5; !alive _obj };
[DW_MISSION_MAIN_TASK, "SUCCEEDED"] call BIS_fnc_taskSetState;