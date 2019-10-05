//Init commander
DW_COMMANDER disableAI "ALL";
DW_COMMANDER enableAI "ANIM";

/* Blocage des officiers, TODO
_job = {
	LM_COMMANDER setDir 252;
	LM_INTENDANT setDir 121;
	LM_COMMANDER setPosATL [14166.412, 16246.308, 0.763];
	LM_INTENDANT setPosATL [14181.2,16280.4,0.00144196];
};
_pas_bouger = {
	params["_unit", "_state", "_reason"];
	if( (_unit in [LM_COMMANDER, LM_INTENDANT]) && _state ) then
	{
		[objNull, LM_COMMANDER] call ace_captives_fnc_doRemoveHandcuffs;
		[objNull, LM_INTENDANT] call ace_captives_fnc_doRemoveHandcuffs;
		call _job;
	};
};
["ace_captiveStatusChanged", _pas_bouger] call CBA_fnc_addEventHandler;
[_job, [], 0, 300, 0] call RWT_fnc_cronJobAdd;*/

//Loading mission state
DW_MISSION_REINIT = profileNamespace getVariable ["DW_MISSION_REINIT", false]; //determine wether or not the mission should retrieve its previous state
publicVariable "DW_MISSION_REINIT";

//Starting mission engine
_nul = [] execVM "mission_engine.sqf";