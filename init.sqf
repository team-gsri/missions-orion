// Reminder : add D-651 Normandie tag french flag with Eden properties

// Tracking Zeus commands
["zeus", {(_this select 0) spawn GSRI_fnc_handleRequest}, "all"] call CBA_fnc_registerChatCommand;

//EOS SYSTEM
[]execVM "eos\OpenMe.sqf";

//downloaddata
enableSaving [ false, false ];

// Must be executed on all clients
sleep 5;
[destroyer] call GSRI_fnc_libertyInit;
