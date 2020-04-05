// Tracking Zeus commands
["zeus", {(_this select 0) spawn GSRI_fnc_handleRequest}, "all"] call CBA_fnc_registerChatCommand;

//EOS SYSTEM
[]execVM "eos\OpenMe.sqf";

//downloaddata
enableSaving [ false, false ];