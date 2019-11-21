// Get a list of oil tanks
_list = nearestObjects [DW_MISSION_POSITION, ["Land_dp_smallTank_F","Land_dp_bigTank_F"], 200, true];

// Victory check
_isSuccess = {
	params["_list"];
	_return = true;
	{ if(alive _x) exitWith { _return = false } } forEach _list;
	_return
};

waitUntil { sleep 5; [_list] call _isSuccess };
[DW_MISSION_MAIN_TASK, "SUCCEEDED"] call BIS_fnc_taskSetState;