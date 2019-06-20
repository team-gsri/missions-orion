{
	if(_x getVariable "Name" != "Admin" and isNull (getAssignedCuratorUnit _x)) exitWith {
		[player, _x] remoteExec ["assignCurator", 2];
		systemChat format ["Assigned to slot %1.", _x getVariable "Name"];
	};

	if(_forEachIndex == count allCurators - 1) then {systemChat "No Zeus slot available."};
} forEach allCurators;