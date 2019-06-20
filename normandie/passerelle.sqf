// Script de spawn du personnel de la passerelle
// by [LM] Cheitan

if!(isServer) exitWith {};

// Récupération de la référence du navire
params["_navire"];

_marin = {
	params["_unit"];
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;
	_unit forceAddUniform "U_B_GEN_Soldier_F";
	_unit addHeadgear "H_MilCap_blue";
	_unit addGoggles "G_Tactical_Clear";
	_unit setSpeaker "ace_novoice";
};

// Marchepieds
_m1 = "babe_helper" createVehicleLocal [0,0,0]; _m1 attachTo [_navire, [-1.29529,-39.7251,19.35]];
_m2 = "babe_helper" createVehicleLocal [0,0,0]; _m2 attachTo [_navire, [1.29529,-39.7251,19.35]];

// Pilotes (tic et tac)
_group = createGroup[WEST, true];
_tic = _group createUnit ["B_Soldier_F", (_navire modelToWorld [-1.29529,-39.7251,19.35]), [], 0, "CAN_COLLIDE"];
_tac = _group createUnit ["B_Soldier_F", (_navire modelToWorld [1.29529,-39.7251,19.35]), [], 0, "CAN_COLLIDE"];

{
	_x allowDamage false;
	_x setDir (getDir _navire + 180);
	_x disableAI "ALL";
	_move = selectRandom ["HubSittingAtTableU_idle1", "HubSittingAtTableU_idle2", "HubSittingAtTableU_idle3"];
	[_x, _move] remoteExecCall ["switchMove", 0];
	_x addEventHandler ["AnimDone", {
		params ["_unit", "_anim"];
		_move = selectRandom ["HubSittingAtTableU_idle1", "HubSittingAtTableU_idle2", "HubSittingAtTableU_idle3"];
		[_unit, _move] remoteExecCall ["switchMove", 0];
	}];
	[_x] call _marin;
} forEach [_tic, _tac];

// Tour radio TFAR
[_navire, 50000] remoteExecCall ["TFAR_antennas_fnc_initRadioTower", 0, true];
// TODO : ajouter des moyens de couper la transmission, de la brouiller, etc
