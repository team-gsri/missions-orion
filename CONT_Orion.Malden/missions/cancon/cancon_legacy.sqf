_pos = selectRandom [
	[5386.58,2786.98,0],
	[5370.69,2775.76,0],
	[5347.96,2747.16,0],
	[5382.19,2754.11,0],
	[5389.33,2766.74,0],
	[5413.26,2787.42,4.217]
];

// Target
_journalist = (createGroup [civilian, true]) createUnit ["C_journalist_F",_pos,[],0,"NONE"];
_journalist disableAI "ALL";
DW_MISSION_TEMP pushBack _journalist;

waitUntil { sleep 5; (DW_COMMANDER distance2D _journalist < 2 || !alive _journalist) };

if(alive _journalist) then {
	[DW_MISSION_MAIN_TASK, "SUCCEEDED"] call BIS_fnc_taskSetState;
} else {
	[DW_MISSION_MAIN_TASK, "FAILED"] call BIS_fnc_taskSetState;
};