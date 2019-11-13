//dynamic group
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
["Preload"] call BIS_fnc_arsenal;

// Waiting for internal stuff
waitUntil { !isNil "DW_MISSION_REINIT" };

/////////////////////////////////////   Commander interactions   /////////////////////////////////////
_statement = {
	remoteExec ["DW_fnc_launchMainMission", 2];
};
_actionOrdres = ["startMission", "Obtenir de nouveaux ordres", "", _statement,{!DW_MISSION_STARTED}] call ace_interact_menu_fnc_createAction;
[DW_COMMANDER, 0, ["ACE_Head"], _actionOrdres] call ace_interact_menu_fnc_addActionToObject;

_modifier_reinit = {
	params ["_target", "_player", "_params", "_actionData"];
    // Modify the action - index 1 is the display name, 2 is the icon...
    _actionData set [1, format ["Réinit. au prochain redémarrage : %1", if(DW_MISSION_REINIT) then {"OUI"} else {"NON"}]];
};
_actionReinit = ["reinitMission", "Réinit. au prochain redémarrage : NON", "",{remoteExecCall ["DW_fnc_switchReinitValue", 2]},{serverCommandAvailable "#logout"},{},[],"",4,[false, false, false, false, false],_modifier_reinit] call ace_interact_menu_fnc_createAction;
[DW_COMMANDER, 0, ["ACE_Head"], _actionReinit] call ace_interact_menu_fnc_addActionToObject;