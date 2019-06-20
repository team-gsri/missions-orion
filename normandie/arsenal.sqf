// Script d'ajout des bateaux de sauvetage
// by [LM] Cheitan

if!(isServer) exitWith {};

// Récupération du navire concerné
params["_navire"];

_start = [-2.42944,15.6,8.56245];
_handles = [];

for [{_i = 0}, {_i < 9}, {_i = _i+1}] do {
	_handle = createVehicle ["Land_Battery_F", [0,0,0], [], 0, "NONE"];
	_handle enableSimulation false;
	_handle setPosASL (_navire modelToWorld (_start vectorAdd [0,(0.61*_i),0]));
	_handle setDir (getDir _navire + 180);
	_handles pushBack _handle;
};

// Actions ACE
_actionArsenal = ["actionArsenal","Ouvrir le vestiaire","",{["Open",true] spawn bis_fnc_arsenal;},{true},{},[],[0,0,0],9] call ace_interact_menu_fnc_createAction;
{
	[_x, 0, ["ACE_MainActions"], _actionArsenal] remoteExecCall ["ace_interact_menu_fnc_addActionToObject", 0, true];
} forEach _handles;