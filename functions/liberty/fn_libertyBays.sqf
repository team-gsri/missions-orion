// Script d'ajout des baies latérales
// by [LM] Cheitan

// Récupération du navire concerné
params["_navire"];

// Création des baies, côté serveur
if(isServer) then {
	// Baie tribord
	_tri = createVehicle ["Land_Destroyer_01_Boat_Rack_01_F", [0,0,0], [], 0, "NONE"];
	_tri enableSimulation false;
	_tri allowDamage false;
	_tri setDir (getDir _navire + 180);
	_tri setPosATL ASLToATL (_navire modelToWorldWorld [-11.5,14.43,7.5]);
	_tri enableSimulation true;
	[_tri] remoteExecCall ["BIS_fnc_BoatRack01Init", 0, true];
	_navire setVariable ["baie_tribord", _tri, true];

	// Baie babord
	_ba = createVehicle ["Land_Destroyer_01_Boat_Rack_01_F", [0,0,0], [], 0, "NONE"];
	_ba enableSimulation false;
	_ba allowDamage false;
	_ba setDir (getDir _navire + 180);
	_ba setPosATL ASLToATL (_navire modelToWorldWorld [11.5,14.43,7.5]);
	_ba enableSimulation true;
	[_ba] remoteExecCall ["BIS_fnc_BoatRack01Init", 0, true];
	_navire setVariable ["baie_babord", _ba, true];
};

// Création des commandes, côté client
_com1 = "Land_Battery_F" createVehicleLocal [0,0,0];
_com1 enableSimulation false;
_com1 setPosATL ASLToATL (_navire modelToWorldWorld [-3.4,12,13.8]);
_com1 setVariable ["baie", _navire getVariable "baie_tribord", true];

_com2 = "Land_Battery_F" createVehicleLocal [0,0,0];
_com2 enableSimulation false;
_com2 setPosATL ASLToATL (_navire modelToWorldWorld [3.4,12,13.8]);
_com2 setVariable ["baie", _navire getVariable "baie_babord", true];

// Actions ACE
_actionCRRC = ["actionCRRC","CRRC","",{_this spawn GSRI_fnc_libertyBayReplace},{true},{},["B_Boat_Transport_01_F"]] call ace_interact_menu_fnc_createAction;
_actionRHIB = ["actionRHIB","RHIB","",{_this spawn GSRI_fnc_libertyBayReplace},{true},{},["C_Boat_Transport_02_F"]] call ace_interact_menu_fnc_createAction;
_actionHB = ["actionHB","Hors-bord","",{_this spawn GSRI_fnc_libertyBayReplace},{true},{},["B_Boat_Armed_01_minigun_F"]] call ace_interact_menu_fnc_createAction;
_actionSDV = ["actionSDV","SDV","",{_this spawn GSRI_fnc_libertyBayReplace},{true},{},["B_SDV_01_F"]] call ace_interact_menu_fnc_createAction;
_actionNull = ["actionNull","Vide","",{_this spawn GSRI_fnc_libertyBayReplace},{true},{},[""]] call ace_interact_menu_fnc_createAction;

{
	[_com1, 0, ["ACE_MainActions"], _x] call ace_interact_menu_fnc_addActionToObject;
	[_com2, 0, ["ACE_MainActions"], _x] call ace_interact_menu_fnc_addActionToObject;
} forEach [_actionCRRC, _actionRHIB, _actionHB, _actionSDV, _actionNull];