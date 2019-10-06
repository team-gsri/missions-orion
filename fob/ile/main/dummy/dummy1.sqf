// Dummy first mission

_marker_dummy1 = createMarker ["marker_dummy1", [935.721,12183.1,0]]; "marker_dummy1" setMarkerType "Empty";
[WEST,["task_dummy1"],["Détruire le quad", "Boum", "marker_dummy1"],objNull,true,1,true] call BIS_fnc_taskCreate;
["task_dummy1","destroy"] call BIS_fnc_taskSetType;
DW_MISSION_MAIN_TASK = "task_dummy1";
DW_MISSION_POSITION = getMarkerPos "marker_dummy1";

_veh = "O_Quadbike_01_F" createVehicle [935.721,12183.1,0];

DW_MISSION_TEMP pushBack _veh;

waitUntil {sleep 5; !alive _veh};

deleteMarker "marker_dummy1";
["task_dummy1", "SUCCEEDED"] call BIS_fnc_taskSetState;