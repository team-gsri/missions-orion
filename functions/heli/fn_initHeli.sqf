// No serverside task
if(isDedicated) exitWith {};

params["_navire"];

// Actions handle spawn
_handle = "Land_Battery_F" createVehicleLocal [0,0,0];
_handle enableSimulation false;
_handle attachTo [_navire, [-9.74,36.64,12.38]];

// Hangar dummy object spawn : used as a position
_hangar = "Land_HelipadEmpty_F" createVehicleLocal [0,0,0];
_hangar enableSimulation false;
_hangar attachTo [_navire, [0,44,8.81]];
_hangar setDir 180; //warning : relative to attached object !
_navire setVariable ["GSRI_hangar", _hangar];

// Deck dummy object spawn : used as a position
_deck = "Land_HelipadEmpty_F" createVehicleLocal [0,0,0];
_deck enableSimulation false;
_deck attachTo [_navire, [0.08,75,8.76]];
_deck setDir 180; //warning : relative to attached object !
_navire setVariable ["GSRI_deck", _deck];

// Heli spawning
_types = ["B_Heli_Transport_01_F", "B_Heli_Attack_01_dynamicLoadout_F", "B_Heli_Light_01_dynamicLoadout_F", "B_Heli_Light_01_F", "B_T_UAV_03_dynamicLoadout_F","MELB_AH6M","MELB_MH6M"];
_hangar setVariable ["heli_list", _types];
_deck setVariable ["heli_list", _types];
{
	if(isClass (configFile >> "CfgVehicles" >> _x)) then {
		_display = [_x] call GSRI_fnc_minifyName;
		_modifier = {
			params ["_t", "_p", "_args", "_actionData"];

			// Retrieving action parameters
			_args params ["_hangar", "_newType"];

			// Get the nearest chopper
			_heli = [_hangar] call GSRI_fnc_getHeli;

			// Select formattable string depending on wether there is already a chopper or not
			_displayName = ["Remplacer %1 par %2", "Demander %2"] select (isNull _heli);

			// Proper formatting of displayName and action parameters
			_actionData set [1, format [_displayName, [_heli] call GSRI_fnc_minifyName, [_newType] call GSRI_fnc_minifyName]];
		};
		_condition = {
			params["_t", "_p", "_args"];

			// Retrieving action parameters
			_args params ["_hangar", "_newType"];

			_heli = [_hangar] call GSRI_fnc_getHeli;

			// If names are the same, do not display
			(([_newType] call GSRI_fnc_minifyName) != ([_heli] call GSRI_fnc_minifyName))
		};
		_action = [format["action%1", _display],_display,"",GSRI_fnc_spawnHeli,_condition,{},[_hangar, _x],"",2,[false, false, false, false, false], _modifier] call ace_interact_menu_fnc_createAction;
		[_handle, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
	};
} forEach _types;

// Hangar cleaning action
_modifier = {
    params ["_t", "_p", "_args", "_actionData"];

	// Retrieving action parameters
	_args params ["_hangar"];

	// Get the nearest chopper
	_heli = [_hangar] call GSRI_fnc_getHeli;

	// Proper formatting of displayName and action parameters
    _actionData set [1, format ["Supprimer %1", [_heli] call GSRI_fnc_minifyName]];
};
_condition = {
	params ["_t", "_p", "_args"];
	_args params ["_hangar"];
	!isNull ([_hangar] call GSRI_fnc_getHeli)
};
_statement = {
	params ["_t", "_p", "_args"];
	_args params ["_hangar"];
	_heli = ([_hangar] call GSRI_fnc_getHeli);
	["HeliDelete", [getText (configFile >> "CfgVehicles" >> typeOf _heli >> "displayName")]] call BIS_fnc_showNotification;
	deleteVehicle _heli;
};
_action = ["actionClear","Supprimer","",_statement,_condition,{},[_hangar],"",2,[false, false, false, false, false], _modifier] call ace_interact_menu_fnc_createAction;
[_handle, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

// FRIES mounting action
_condition = {
	params ["_t", "_p", "_args"];
	_args params ["_hangar"];
	_heli = [_hangar] call GSRI_fnc_getHeli;
	(isNumber (configFile >> "CfgVehicles" >> typeOf _heli >> "ace_fastroping_enabled") && isNull (_heli getVariable ["ace_fastroping_FRIES", objNull]));
};
_statement = {
	params ["_t", "_p", "_args"];
	_args params ["_hangar"];
	_heli = [_hangar] call GSRI_fnc_getHeli;
	["HeliFRIES", [getText (configFile >> "CfgVehicles" >> typeOf _heli >> "displayName")]] call BIS_fnc_showNotification;
	[_heli] remoteExecCall ["ace_fastroping_fnc_equipFRIES", 2];
};
_action = ["actionFRIES","Equiper FRIES","",_statement,_condition,{},[_hangar]] call ace_interact_menu_fnc_createAction;
[_handle, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

// Place helicopter on rear deck
// TODO : replace by Lesh's tow mod
_condition = {
	params["_t", "_p", "_args"];
	_args params ["_hangar", "_deck"];
	// Return true if there is a heli in hangar and if there is no heli on deck
	!(isNull ([_hangar] call GSRI_fnc_getHeli)) and (isNull ([_deck] call GSRI_fnc_getHeli))
};
_statement = {
	params["_t", "_p", "_args"];
	_args params ["_hangar", "_deck"];
	_heli = [_hangar] call GSRI_fnc_getHeli;
	["HeliMoved", [getText (configFile >> "CfgVehicles" >> typeOf _heli >> "displayName")]] call BIS_fnc_showNotification;
	_heli setPosASL getPosASL _deck;
};
_action = ["actionDeck","Placer l'appareil sur le pont d'envol","",_statement,_condition,{},[_hangar, _deck]] call ace_interact_menu_fnc_createAction;
[_handle, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

// Place helicopter in hangar
// TODO : replace by Lesh's tow mod
_condition = {
	params["_t", "_p", "_args"];
	_args params ["_hangar", "_deck"];
	// Return true if there is no heli in hangar and if there is a heli on deck
	(isNull ([_hangar] call GSRI_fnc_getHeli)) and !(isNull ([_deck] call GSRI_fnc_getHeli))
};
_statement = {
	params["_t", "_p", "_args"];
	_args params ["_hangar", "_deck"];
	_heli = [_deck] call GSRI_fnc_getHeli;
	["HeliMoved", [getText (configFile >> "CfgVehicles" >> typeOf _heli >> "displayName")]] call BIS_fnc_showNotification;
	_heli setPosASL getPosASL _hangar;
};
_action = ["actionHangar","Placer l'appareil dans le hangar","",_statement,_condition,{},[_hangar, _deck]] call ace_interact_menu_fnc_createAction;
[_handle, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;