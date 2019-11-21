//Init commander
DW_COMMANDER disableAI "ALL";
DW_COMMANDER enableAI "ANIM";

//Loading mission state
DW_MISSION_REINIT = profileNamespace getVariable ["DW_MISSION_REINIT", false]; //determine wether or not the mission should retrieve its previous state
publicVariable "DW_MISSION_REINIT";

//Starting mission engine
_nul = [] execVM "mission_engine.sqf";