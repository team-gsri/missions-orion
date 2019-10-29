//exec: server

// Marker d'alerte principal, il y en a toujours au moins un de créé
_object = createVehicle ["Sign_Pointer_Green_F", DW_MISSION_POSITION, [], 0, "CAN_COLLIDE"];
_object enableSimulation false;
hideObjectGlobal _object;
DW_MISSION_TEMP pushBack _object;
	
_miliTow = ([DW_MISSION_POSITION, DW_MISSION_POPULATE select 0] call DW_fnc_populateMilitaryTowers);
_miliQG = ([DW_MISSION_POSITION, DW_MISSION_POPULATE select 0] call DW_fnc_populateMilitaryQG);
_miliWatch = ([DW_MISSION_POSITION, DW_MISSION_POPULATE select 0] call DW_fnc_populateMilitaryWatchTowers);
_sheds = ([DW_MISSION_POSITION, DW_MISSION_POPULATE select 1] call DW_fnc_populateSheds);
// helis = [DW_MISSION_POSITION, DW_MISSION_POPULATE select 2] call DW_fnc_populateHelipads;
_solar = ([DW_MISSION_POSITION, DW_MISSION_POPULATE select 3] call DW_fnc_populateSolarTowers);
_patrols = ([DW_MISSION_POSITION, DW_MISSION_POPULATE select 4] call DW_fnc_populatePatrols);

sleep 7;
_total = _miliQG + _miliTow + _miliWatch + _sheds + _solar + _patrols;

/*
while { _total < (DW_MISSION_POPULATE select 5) } do
{
	_total = _total + ([DW_MISSION_POSITION] call DW_fnc_populateWanderingGroup);
};


_trigger = createTrigger ["EmptyDetector", DW_MISSION_POSITION, false];
_trigger setTriggerArea [1500, 1500, 0, false];
_trigger setTriggerActivation ["EAST", "WEST D", false];
_trigger setTriggerStatements ["this", "call DW_fnc_alertZone;", ""];
*/

DW_MISSION_TEMP pushBack _trigger;