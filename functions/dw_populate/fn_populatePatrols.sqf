//exec: server

params["_center", "_patrols"];

_count = 0;

if(!_patrols) exitWith {_count};

// Patrouilles dans la ville
for "_i" from 0 to 3 do
{
	_position = [(_center select 0) + random (200) - random (200) , (_center select 1) + random (200) - random (200) , 0];
	_group = [_position, east, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "UInfantry" >> "OIA_GuardSquad")] call BIS_fnc_spawnGroup;
	_group deleteGroupWhenEmpty true;
	//[_group] call LM_fnc_addInjurableGroup;
	{ DW_MISSION_TEMP pushback _x } forEach (units _group);
	_count = _count + count units _group;
	[_group, _center, 200] call BIS_fnc_taskPatrol;
};

_count