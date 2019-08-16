// Fonction récupérant une requête Zeus pour la traiter

// Paramètre unique : chaîne de caractères à décomposer
params["_request"];

_array = _request splitString " ";
sleep 0.1;

switch (_array select 0) do {
	case "help": { [] call GSRI_fnc_zeusHelp };
	case "slots" : { [] call GSRI_fnc_zeusSlots };
	case "request" : { [] call GSRI_fnc_zeusRequest };
	case "release" : { [] call GSRI_fnc_zeusRelease };
	case "promote" : { [_array select 1] remoteExecCall ["GSRI_fnc_zeusPromote", 2] }; //TODO : ne gère pas les pseudo avec espace...
	default { [] call GSRI_fnc_zeusHelp };
};