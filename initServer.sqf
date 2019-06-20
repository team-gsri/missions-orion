// Initialisation de la FREMM Normandie
[normandie,true,true,true,true] execVM "normandie\initLiberty.sqf";

// Enregistrement des commandes de requête Zeus
["zeus", {(_this select 0) spawn GSRI_fnc_handleRequest}, "all"] call CBA_fnc_registerChatCommand;