/*_extract = [];
{
	if(_x getVariable ["extract", false]) then {
		_extract pushBack [typeOf _x, getPosATL _x, getDir _x];
	};
} forEach ((getPos center) nearObjects 200);
copyToClipboard str _extract;*/

// Stuff
{
	_obj = (_x select 0) createVehicle [0,0,0];
	_obj setDir (_x select 2);
	_obj setPosATL (_x select 1);
	DW_MISSION_TEMP pushBack _obj;
} forEach [
	["Land_Cargo_Patrol_V3_F",[3532.87,3288.6,-0.04],49.016],
	["Land_Cargo_HQ_V3_F",[3556.56,3291.7,0.373],286.685],
	["Land_Cargo_Patrol_V3_F",[3587.74,3308.01,0.0379999],179.799],
	["Land_Cargo_Patrol_V3_F",[3614.33,3219.28,0],13.231],
	["Land_Cargo_House_V3_F",[3628.9,3220.54,0],104.621],
	["Land_Cargo_House_V3_F",[3633.07,3235.48,0],104.621],
	["Land_Cargo_House_V3_F",[3634.92,3242.39,0],104.621],
	["Land_Cargo_House_V3_F",[3631.19,3228.6,0],104.621],
	["Land_Shed_Small_F",[3659.78,3226.93,0],15.532],
	["Land_Cargo_Patrol_V3_F",[3650.27,3280.54,-0.105],271.183],
	["Land_BagFence_Corner_F",[3721.95,3252.26,3.623],345],
	["Land_BagFence_Corner_F",[3720.22,3264.67,3.618],75.128],
	["Land_BagFence_Long_F",[3719.95,3266.77,3.611],75],
	["Land_BagFence_Long_F",[3722.8,3250.52,3.626],75],
	["Land_BagFence_Long_F",[3718.41,3263.86,3.626],165],
	["Land_HBarrier_3_F",[3715.9,3253.13,0.149],82.803],
	["Land_HBarrier_3_F",[3715.03,3256.55,0.000999451],250],
	["Land_HBarrier_3_F",[3721.47,3254.11,-0.00200081],82.803],
	["Land_HBarrier_3_F",[3720.39,3262.21,0],82.803],
	["Land_Razorwire_F",[3721.59,3265.47,0.00146484],75.0002],
	["O_HMG_01_high_F",[3719.23,3264.89,3.60674],121.97],
	["O_HMG_01_high_F",[3721.95,3251.3,3.61778],19.0826],
	["Land_Razorwire_F",[3725.1,3240.29,-0.00453568],75.0002]
];

// Target
_obj = "O_Truck_03_device_F" createVehicle [0,0,1000];
_obj setDir 188;
_obj setPosATL [3607.08,3233.47,0];
DW_MISSION_TEMP pushBack _obj;

// AA
{
	_aa = "O_SAM_System_04_F" createVehicle [0,0,1000];
	_aa setDir (_x select 1);
	_aa setPosATL (_x select 0);
	createVehicleCrew _aa;
	DW_MISSION_TEMP pushBack _aa;
} forEach [[[3576.68,3292.72,0],195],[[3704.62,3155.16,0],2]];
_aa = "O_Radar_System_02_F" createVehicle [0,0,1000];
_aa setDir 160;
_aa setPosATL [3548.87,3129.92,6.6];
createVehicleCrew _aa;
DW_MISSION_TEMP pushBack _aa;

// Victory loop
waitUntil { sleep 5; !alive _obj };
[DW_MISSION_MAIN_TASK, "SUCCEEDED"] call BIS_fnc_taskSetState;