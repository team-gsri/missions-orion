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



// POC sur Malden : zone unique
/*
 * 0, moray = île au nord-ouest
 * 1, nord = partie nord de l'île principale
 * 2, montagne = plateau montagneux au centre
 * 3, sud = partie sud de l'île principale
 * 4, ile = île militarisée au sud-est
*/
DW_LISTE_FOB = ["moray", "nord", "montagne", "sud", "ile"];
DW_LISTE_FOB_MORAY = ["dummy"];
DW_LISTE_FOB_NORD = ["dummy"];
DW_LISTE_FOB_MONTAGNE = ["dummy"];
DW_LISTE_FOB_SUD = ["dummy"];
DW_LISTE_FOB_ILE = ["dummy"];

// Liste de mains effectuées pour chaque FOB
DW_MISSION_DONE = [[],[],[],[],[]];
// Liste des marqueurs associés à chaque FOB
DW_MISSION_MARKERS = [[],[],[],[],[]];
// Liste des tâches associés à chaque FOB
DW_MISSION_TASKS = [[],[],[],[],[]];
// Moniteurs de l'état des FOB, LOCKED, OPEN, ACTIVE
DW_MISSION_FOBS = ["LOCKED", "LOCKED", "LOCKED", "LOCKED", "LOCKED"];


[WEST,"task_fob_moray",["Etat : VERROUILLÉ<br/><br/>Pour déverrouiller un FOB, sécurisez la région en réalisant suffisamment de missions principales dans le secteur.", "Moray", "marker_fob_moray"],getMarkerPos "marker_fob_moray",false,1,false] call BIS_fnc_taskCreate;
["task_fob_moray","wait"] call BIS_fnc_taskSetType;
[WEST,"task_fob_nord",["Etat : VERROUILLÉ<br/><br/>Pour déverrouiller un FOB, sécurisez la région en réalisant suffisamment de missions principales dans le secteur.", "Zone nord", "marker_fob_nord"],getMarkerPos "marker_fob_nord",false,1,false] call BIS_fnc_taskCreate;
["task_fob_nord","wait"] call BIS_fnc_taskSetType;
[WEST,"task_fob_montagne",["Etat : VERROUILLÉ<br/><br/>Pour déverrouiller un FOB, sécurisez la région en réalisant suffisamment de missions principales dans le secteur.", "Montagnes", "marker_fob_montagne"],getMarkerPos "marker_fob_montagne",false,1,false] call BIS_fnc_taskCreate;
["task_fob_montagne","wait"] call BIS_fnc_taskSetType;
[WEST,"task_fob_sud",["Etat : VERROUILLÉ<br/><br/>Pour déverrouiller un FOB, sécurisez la région en réalisant suffisamment de missions principales dans le secteur.", "Zone sud", "marker_fob_sud"],getMarkerPos "marker_fob_sud",false,1,false] call BIS_fnc_taskCreate;
["task_fob_sud","wait"] call BIS_fnc_taskSetType;
[WEST,"task_fob_ile",["Etat : VERROUILLÉ<br/><br/>Pour déverrouiller un FOB, sécurisez la région en réalisant suffisamment de missions principales dans le secteur.", "Ile militarisée", "marker_fob_ile"],getMarkerPos "marker_fob_ile",false,1,false] call BIS_fnc_taskCreate;
["task_fob_ile","wait"] call BIS_fnc_taskSetType;

// Chargement des anciennes variables;
DW_MISSION_REINIT = profileNamespace getVariable ["DW_MISSION_REINIT", false];
if(DW_MISSION_REINIT) then {
	call DW_fnc_switchReinitValue;
} else {
	call DW_fnc_loadMissionState;
};