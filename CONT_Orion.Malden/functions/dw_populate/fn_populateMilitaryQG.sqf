//exec: server

params["_center", "_military"];

_count = 0;

if(!_military) exitWith {_count};

_array = (_center nearObjects ["Cargo_HQ_base_F", 1000]);

{
	_group = createGroup [east, true];
	_units = ["O_Soldier_F", "O_Soldier_AR_F", "O_engineer_F", "O_Soldier_SL_F", "O_medic_F"];
	for "_i" from 0 to count(_x buildingPos -1) do
	{
		if(random 1 > 0.5) then {
			_u = _group createUnit [(selectRandom _units), (_x buildingPos _i), [], 0, "CAN_COLLIDE"];
			DW_MISSION_TEMP pushBack _u;
		};
	};
	{doStop _x;} forEach units _group;
	_count = _count + count units _group;
	//[_group] call DW_fnc_addInjurableGroup;
	
	// Marker d'alerte
	_object = createVehicle ["Sign_Pointer_Green_F", getPos _x, [], 0, "CAN_COLLIDE"];
	_object enableSimulation false;
	hideObjectGlobal _object;
	DW_MISSION_TEMP pushBack _object;

} forEach _array;

_count