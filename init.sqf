// Reminder : add D-651 Normandie tag french flag with Eden properties

// Must be executed on all clients
[destroyer] call GSRI_fnc_libertyInit;

// Tracking Zeus commands
["zeus", {(_this select 0) spawn GSRI_fnc_handleRequest}, "all"] call CBA_fnc_registerChatCommand;

//EOS SYSTEM
[]execVM "eos\OpenMe.sqf";

//downloaddata
enableSaving [ false, false ];

waitUntil { !isNil "T8L_var_INITDONE" };

if ( !isServer ) exitWith {}; 

sleep 10; // I dont know why, but some sleep is requied or the Actions on the Objects wont work ... this is beyond my knowledge 

[ [ laptop01, laptop02, laptop03 ], "T8L_fnc_addActionLaptop", true, true] spawn BIS_fnc_MP;
