//exec: server

params["_center", "_solartowers"];

_count = 0;

if(!_solartowers) exitWith {_count};

{
	if(random 1 > 0.5) then {
		_u = (createGroup [east, true]) createUnit ["O_Sharpshooter_F", (_x modelToWorld [0,0,24]), [], 0, "CAN_COLLIDE"];
		//[_u] call LM_fnc_addInjurableUnit;
		DW_MISSION_TEMP pushBack _u;
		_count = _count + 1;
	};
} forEach (_center nearObjects ["Land_spp_Tower_F", 1000]);

_count