//exec: server

// Marker d'alerte principal, il y en a toujours au moins un de créé
private _pointer = createVehicle ["Sign_Pointer_Green_F",DW_MISSION_POSITION,[],0,"CAN_COLLIDE"];
_pointer enableSimulation false;
hideObjectGlobal _pointer;
DW_MISSION_TEMP pushBack _pointer;
	
[DW_MISSION_POSITION, DW_MISSION_POPULATE select 0] call DW_fnc_populateMilitaryTowers;
[DW_MISSION_POSITION, DW_MISSION_POPULATE select 0] call DW_fnc_populateMilitaryQG;
[DW_MISSION_POSITION, DW_MISSION_POPULATE select 0] call DW_fnc_populateMilitaryWatchTowers;
[DW_MISSION_POSITION, DW_MISSION_POPULATE select 1] call DW_fnc_populateSheds;
[DW_MISSION_POSITION, DW_MISSION_POPULATE select 2] call DW_fnc_populateHelipads;
[DW_MISSION_POSITION, DW_MISSION_POPULATE select 3] call DW_fnc_populateSolarTowers;
[DW_MISSION_POSITION, DW_MISSION_POPULATE select 4] call DW_fnc_populatePatrols;

sleep 7;