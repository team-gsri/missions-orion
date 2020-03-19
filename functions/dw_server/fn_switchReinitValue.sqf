/*
	Description:
	Bascule la valeur de réinitialisation à l'inverse de sa valeur actuelle.
*/
if!(isServer) exitWith {};
//TODO : message d'erreur ?

DW_MISSION_REINIT = !(profileNamespace getVariable ["DW_MISSION_REINIT", false]);
profileNamespace setVariable ["DW_MISSION_REINIT", DW_MISSION_REINIT];
publicVariable "DW_MISSION_REINIT";