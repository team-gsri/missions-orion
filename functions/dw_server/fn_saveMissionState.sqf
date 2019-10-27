// Save current DW state

if(!isServer) exitWith {};

// Creating saved state
_save = [];
{ _save pushBack [_x, (DW_MISSION_TASKS select _forEachIndex) call BIS_fnc_taskState] } forEach DW_MISSION_DONE;
profileNamespace setVariable ["DW_SAVE", str _save];

// Ecriture du fichier
saveProfileNamespace;