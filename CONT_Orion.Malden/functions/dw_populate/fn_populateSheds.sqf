//exec: server

params["_center", "_sheds"];

_count = 0;

if(!_sheds) exitWith {_count};

// Demi abri avec mur en béton
_veh = ["O_MRAP_02_hmg_F", "O_MRAP_02_F", "O_LSV_02_unarmed_F", "O_LSV_02_armed_F"];
{
	_shed = _x;
	_pos = [[1.4,0,0],[1.4,7,0],[1.4,-7,0]];
	{
		if(random 1 > 0.5) then {
			_type = selectRandom _veh;
			_v = createVehicle [_type, [0,0,1000], [], 0, "NONE"];
			_v setDir (getDir _shed)+90;
			_posDef = [(_shed modelToWorld _x) select 0, (_shed modelToWorld _x) select 1, 0];
			_libre = _posDef findEmptyPosition [0,2,_type];
			if!(_libre isEqualTo []) then { _v setPosATL _libre; DW_MISSION_TEMP pushBack _v; _v setDamage 0; } else { deleteVehicle _v; };
		};
	} forEach _pos;
	createGuardedPoint [east, [0,0], -1, _shed];
	_position = [(getPos _x select 0) + random (200) - random (200) , (getPos _x select 1) + random (200) - random (200) , 0];
	_group = [_position, east, ["O_Soldier_F", "O_Soldier_AR_F", "O_crew_F"]] call BIS_fnc_spawnGroup;
	_group deleteGroupWhenEmpty true;
	//[_group] call LM_fnc_addInjurableGroup;
	{ DW_MISSION_TEMP pushback _x } forEach (units _group);
	_count = _count + count units _group;
	_wp = _group addWaypoint [_shed, 0];
	_wp setWaypointType "GUARD";
	_wp setWaypointBehaviour "SAFE";
	
	// Equipages de véhicules
	{
		_group = [getPos _x, east, ["O_Soldier_F", "O_Soldier_F", "O_Soldier_F"]] call BIS_fnc_spawnGroup;
		_group deleteGroupWhenEmpty true;
		//[_group] call LM_fnc_addInjurableGroup;
		{ DW_MISSION_TEMP pushback _x } forEach (units _group);
		//On attribue le véhicule au groupe puis on ajoute la référence dans le namespace du groupe
		_group addVehicle _x;
		_x setVariable ["DW_assigned_group", _group];
	} forEach (_shed nearEntities [["O_LSV_02_armed_F", "O_MRAP_02_hmg_F"], 30]);
} forEach (_center nearObjects ["Land_Shed_Small_F", 1000]);

// Grand abri sans murs
_veh = ["O_Truck_02_transport_F", "O_Truck_02_medical_F", "O_Truck_02_covered_F", "O_APC_Wheeled_02_rcws_v2_F"];
{
	// Remplissage du shed
	_shed = _x;
	_pos = [[0,0,0],[0,8,0],[0,-8,0]];
	{
		if(random 1 > 0.5) then {
			_type = selectRandom _veh;
			_v = createVehicle [_type, [0,0,1000], [], 0, "NONE"];
			_v setDir (getDir _shed)+90;
			_posDef = [(_shed modelToWorld _x) select 0, (_shed modelToWorld _x) select 1, 0];
			_libre = _posDef findEmptyPosition [0,2,_type];
			if!(_libre isEqualTo []) then { _v setPosATL _libre; DW_MISSION_TEMP pushBack _v; _v setDamage 0 } else { deleteVehicle _v };
		};
	} forEach _pos;
	createGuardedPoint [east, [0,0], -1, _shed];
	
	// Gardiens
	_position = [(getPos _x select 0) + random (200) - random (200) , (getPos _x select 1) + random (200) - random (200) , 0];
	_group = [_position, east, ["O_Soldier_F", "O_Soldier_F", "O_Soldier_F"]] call BIS_fnc_spawnGroup;
	_group deleteGroupWhenEmpty true;
	//[_group] call LM_fnc_addInjurableGroup;
	{ DW_MISSION_TEMP pushback _x } forEach (units _group);
	_count = _count + count units _group;
	_wp = _group addWaypoint [_shed, 0];
	_wp setWaypointType "GUARD";
	_wp setWaypointBehaviour "SAFE";
	
	// Equipages de Gorgon
	{
		_group = [getPos _x, east, ["O_crew_F", "O_crew_F", "O_crew_F"]] call BIS_fnc_spawnGroup;
		_group deleteGroupWhenEmpty true;
		//[_group] call LM_fnc_addInjurableGroup;
		{ DW_MISSION_TEMP pushback _x } forEach (units _group);
		//On attribue le véhicule au groupe puis on ajoute la référence dans le namespace du groupe
		_group addVehicle _x;
		_group setVariable ["DW_assigned_vehicle", _x];
	} forEach (_shed nearEntities ["O_APC_Wheeled_02_rcws_v2_F", 30]);
	
	// Marker d'alerte
	_object = createVehicle ["Sign_Pointer_Green_F", getPos _x, [], 0, "CAN_COLLIDE"];
	_object enableSimulation false;
	hideObjectGlobal _object;
	DW_MISSION_TEMP pushBack _object;
} forEach (_center nearObjects ["Land_Shed_Big_F", 1000]);

// Grand abri en métal
{
	_vehList = ["O_LSV_02_armed_F", "O_LSV_02_unarmed_F", "O_Quadbike_01_F", "O_Quadbike_01_F", "O_Quadbike_01_F"];
	_posList = [[13.5,4,-1.5], [0,6,-1.5], [-1,1,-1.5], [2,1,-1.5], [5,1,-1.5]];
	_dirList = [180, 270, 315, 315, 315];
	_shed = _x;
	{
		if(random 1 > 0.5) then {
			_libre = (_shed modelToWorld (_posList select _forEachIndex)) findEmptyPosition [0,2,_x];
			if!(_libre isEqualTo []) then
			{
				_v = createVehicle [_x, [0,0,1000], [], 0, "NONE"];
				_v setDir (getDir _shed)+(_dirList select _forEachIndex);
				_v setPos _libre;
				DW_MISSION_TEMP pushBack _v;
				_v setDamage 0;
			};
		};
	} forEach _vehList;
	createGuardedPoint [east, [0,0], -1, _shed];
	_position = [(getPos _x select 0) + random (200) - random (200) , (getPos _x select 1) + random (200) - random (200) , 0];
	_group = [_position, east, ["O_Soldier_F", "O_Soldier_F"]] call BIS_fnc_spawnGroup;
	_group deleteGroupWhenEmpty true;
	//[_group] call LM_fnc_addInjurableGroup;
	{ DW_MISSION_TEMP pushback _x }forEach (units _group);
	_count = _count + count units _group;
	_wp = _group addWaypoint [_shed, 0];
	_wp setWaypointType "GUARD";
	_wp setWaypointBehaviour "SAFE";
} forEach (_center nearObjects ["Land_i_Shed_Ind_F", 1000]);

_count