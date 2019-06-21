// Script d'ajout des baies latérales
// by [LM] Cheitan

if!(isServer) exitWith {};

// Récupération du navire concerné
params["_navire"];

// Baie tribord
_tri = createVehicle ["Land_Destroyer_01_Boat_Rack_01_F", [0,0,0], [], 0, "NONE"];
_tri enableSimulation false;
_tri setDir (getDir _navire + 180);
_tri setPosATL ASLToATL (_navire modelToWorld [-11.5,14.43,7.5]);
_tri enableSimulation true;
[_tri] remoteExecCall ["BIS_fnc_BoatRack01Init", 0, true];

// Baie babord
_ba = createVehicle ["Land_Destroyer_01_Boat_Rack_01_F", [0,0,0], [], 0, "NONE"];
_ba enableSimulation false;
_ba setDir (getDir _navire + 180);
_ba setPosATL ASLToATL (_navire modelToWorld [11.5,14.43,7.5]);
_ba enableSimulation true;
[_ba] remoteExecCall ["BIS_fnc_BoatRack01Init", 0, true];

// Commandes
_com1 = createVehicle ["Land_Battery_F", [0,0,0], [], 0, "NONE"];
_com1 enableSimulation false;
_com1 setPosATL ASLToATL (_navire modelToWorld [-3.4,12,13.8]);
_com1 setVariable ["baie", _tri, true];

_com2 = createVehicle ["Land_Battery_F", [0,0,0], [], 0, "NONE"];
_com2 enableSimulation false;
_com2 setPosATL ASLToATL (_navire modelToWorld [3.4,12,13.8]);
_com2 setVariable ["baie", _ba, true];

// Fonction de remplacement du bateau
_replace = {
	_this spawn {
		params ["_target", "_player", "_params"];
		_type = (_params select 0);
		_baie = (_target getVariable "baie");
		_cargo = (getVehicleCargo _baie) select 0;

		// Si il y a déjà un véhicule on le supprime
		if!(isNil "_cargo") then
		{
			if (typeOf _cargo isEqualTo "B_Boat_Transport_01_F") then { deleteVehicle (_cargo getVariable "nameOfShovel") }; // Suppression de la pelle
			deleteVehicle _cargo; // Suppression du cargo
		};

		if!(_type isEqualTo "") then {
			// Vérif vide et chargement du nouveau cargo
			waitUntil { count (getVehicleCargo _baie) == 0 };
			_cargo = createVehicle [_type, [0,0,0], [], 0, "NONE"];
			_baie setVehicleCargo _cargo;
		};
	};
};

// Actions ACE
// FIXME : actions locales uniquement
_actionCRRC = ["actionCRRC","CRRC","",_replace,{true},{},["B_Boat_Transport_01_F"]] call ace_interact_menu_fnc_createAction;
_actionRHIB = ["actionRHIB","RHIB","",_replace,{true},{},["C_Boat_Transport_02_F"]] call ace_interact_menu_fnc_createAction;
_actionHB = ["actionHB","Hors-bord","",_replace,{true},{},["B_Boat_Armed_01_minigun_F"]] call ace_interact_menu_fnc_createAction;
_actionSDV = ["actionSDV","SDV","",_replace,{true},{},["B_SDV_01_F"]] call ace_interact_menu_fnc_createAction;
_actionNull = ["actionNull","Vide","",_replace,{true},{},[""]] call ace_interact_menu_fnc_createAction;

{
	[_com1, 0, ["ACE_MainActions"], _x] remoteExecCall ["ace_interact_menu_fnc_addActionToObject", 0, true];
	[_com2, 0, ["ACE_MainActions"], _x] remoteExecCall ["ace_interact_menu_fnc_addActionToObject", 0, true];
} forEach [_actionCRRC, _actionRHIB, _actionHB, _actionSDV, _actionNull];


// Rubberboat dragging : [_boat, true, [0, 2.95, -0.2], 180] call ace_dragging_fnc_setDraggable;