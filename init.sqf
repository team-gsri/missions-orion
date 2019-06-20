//EOS SYSTEM
[]execVM "eos\OpenMe.sqf";

//downloaddata
enableSaving [ false, false ];

call compile preprocessFile "downloadData.sqf";

waitUntil { !isNil "T8L_var_INITDONE" };

if ( !isServer ) exitWith {}; 

sleep 10; // I dont know why, but some sleep is requied or the Actions on the Objects wont work ... this is beyond my knowledge 

[ [ laptop01, laptop02, laptop03 ], "T8L_fnc_addActionLaptop", true, true] spawn BIS_fnc_MP;

//CHVD
CHVD_allowNoGrass = true;
CHVD_maxView = 8000;
CHVD_maxObj = 8000;

