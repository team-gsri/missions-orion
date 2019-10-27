//exec: server
//instance: unique

//variable transcrivant l'état actuel du générateur de missions
DW_MISSION_STARTED = false;
publicVariable "DW_MISSION_STARTED";
//variable rendant accessible le "centre" de la zone de mission actuelle, utile pour les scripts de population ennemie
DW_MISSION_POSITION = [0,0];
//variable stockant le numéro de zone actuellement en cours, -1 si aucune mission lancée
DW_MISSION_NUM_FOB = -1;
//tableau d'objets à supprimer
DW_MISSION_TEMP = [];
//référence vers la tâche principale de la mission en cours
DW_MISSION_MAIN_TASK = "";
//tableau de stockage des objets FOB - inutilisé ?
DW_MISSION_FOB_TEMP = [[],[],[],[]];
//tableau de stockage des sides effectuées
DW_MISSION_SIDES = [[],[],[],[]];
//tableau de configuration des scripts de population : batiments militaires, abris industriels, hélipads, tours solaires, patrouilles, nombre minimum d'unités, alarme audible
DW_MISSION_POPULATE_DEFAULT = [true, true, true, true, true, 60, true];
DW_MISSION_POPULATE = DW_MISSION_POPULATE_DEFAULT;

// Liste de missions utilisables
_cfg = (missionConfigFile >> "DwMissions" >> "MainMissions");
DW_MISSION_LIST = [];
{
	if((_cfg >> _x >> "playable") call BIS_fnc_getCfgDataBool) then { DW_MISSION_LIST pushBack _x }
} forEach (_cfg call BIS_fnc_getCfgSubClasses);
// Liste de mains effectuées
DW_MISSION_DONE = [];
// Liste des marqueurs associés
DW_MISSION_MARKERS = [];
// Liste des tâches associées
DW_MISSION_TASKS = [];

// Chargement des anciennes variables;
DW_MISSION_REINIT = profileNamespace getVariable ["DW_MISSION_REINIT", false];
if(DW_MISSION_REINIT) then {
	call DW_fnc_switchReinitValue;
} else {
	call DW_fnc_loadMissionState;
};