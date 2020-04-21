EOS_Spawn = compile preprocessfilelinenumbers "eos\core\eos_launch.sqf";Bastion_Spawn=compile preprocessfilelinenumbers "eos\core\b_launch.sqf";null=[] execVM "eos\core\spawn_fnc.sqf";onplayerConnected {[] execVM "eos\Functions\EOS_Markers.sqf";};
/* EOS 1.98 by BangaBob 
GROUP SIZES
 0 = 1
 1 = 2,4
 2 = 4,8
 3 = 8,12
 4 = 12,16
 5 = 16,20

EXAMPLE CALL - EOS
 null = [["MARKERNAME","MARKERNAME2"],[2,1,70],[0,1],[1,2,30],[2,60],[2],[1,0,10],[1,0,250,WEST]] call EOS_Spawn;
 null=[["M1","M2","M3"],[HOUSE GROUPS,SIZE OF GROUPS,PROBABILITY],[PATROL GROUPS,SIZE OF GROUPS,PROBABILITY],[LIGHT VEHICLES,SIZE OF CARGO,PROBABILITY],[ARMOURED VEHICLES,PROBABILITY], [STATIC VEHICLES,PROBABILITY],[HELICOPTERS,SIZE OF HELICOPTER CARGO,PROBABILITY],[FACTION,MARKERTYPE,DISTANCE,SIDE,HEIGHTLIMIT,DEBUG]] call EOS_Spawn;

EXAMPLE CALL - BASTION
 null = [["BAS_zone_1"],[3,1],[2,1],[2],[0,0],[0,0,EAST,false,false],[10,2,120,TRUE,TRUE]] call Bastion_Spawn;
 null=[["M1","M2","M3"],[PATROL GROUPS,SIZE OF GROUPS],[LIGHT VEHICLES,SIZE OF CARGO],[ARMOURED VEHICLES],[HELICOPTERS,SIZE OF HELICOPTER CARGO],[FACTION,MARKERTYPE,SIDE,HEIGHTLIMIT,DEBUG],[INITIAL PAUSE, NUMBER OF WAVES, DELAY BETWEEN WAVES, INTEGRATE EOS, SHOW HINTS]] call Bastion_Spawn;
*/
VictoryColor="colorGreen";	// Colour of marker after completion
hostileColor="colorRed";	// Default colour when enemies active
bastionColor="colorOrange";	// Colour for bastion marker
EOS_DAMAGE_MULTIPLIER=1;	// 1 is default
EOS_KILLCOUNTER=false;		// Counts killed units

//-------------------------------------------------------------------------------------------------------------------------------//

//Inf//

null = [["m1"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m1_1"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m1_2"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m38"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m2"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m2_1"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m2_3"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m3"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m3_1"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m3_2"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m3_3"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m4"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m4_1"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m4_2"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m4_3"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m4_4"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m4_5"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m4_6"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m4_7"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m4_9"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m4_10"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m4_11"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m4_12"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m4_13"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m4_14"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m4_16"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m4_17"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m5"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m6"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m6_1"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m6_2"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m6_3"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m6_4"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m6_5"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m6_6"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m6_7"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m6_8"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m6_11"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m7"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m7_2"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m8"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m8_2"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m8_3"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m8_4"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m8_5"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m8_6"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m8_7"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m9"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m9_2"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m9_3"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m9_4"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m9_5"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m9_6"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m11"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m11_1"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m11_2"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m12"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m13"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_1"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_2"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_3"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_4"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_5"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_6"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_7"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_8"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_9"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_10"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_11"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_12"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_13"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_14"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_15"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_16"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_17"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_18"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_19"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_20"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_21"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_22"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_24"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_25"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_26"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_27"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_28"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_29"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_30"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_31"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_32"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_33"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_34"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_35"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_36"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_38"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_39"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_40"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_41"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m14"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_1"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_2"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_3"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_4"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_5"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_6"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_7"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_8"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_9"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_10"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_11"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_12"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_13"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_14"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_15"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_16"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_18"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_19"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_20"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m15"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m16_1"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m16_2"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m16_2"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m16_3"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m16_4"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m16_6"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m16_7"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m16_8"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m16_9"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m16_10"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m16_11"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//m17,m17_1,m17_3m17_4
null = [["m17"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m17_1"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m17_3"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m17_4"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m18"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_1"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_2"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_3"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_4"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_6"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_7"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_8"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_9"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_10"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_11"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_12"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_13"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_15"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_16"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_17"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_18"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_19"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_20"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_21"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_22"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_23"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_24"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_25"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_26"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_27"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m19"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_1"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_3"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_4"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_5"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_6"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_7"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_9"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_10"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_11"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_12"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_13"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_14"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_15"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_16"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_17"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_18"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_19"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_20"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_21"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_22"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_23"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_24"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_25"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m20"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m21"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_1"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_2"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_3"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_4"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_5"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_6"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_7"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_8"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_9"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_10"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_11"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_12"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_13"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_14"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_15"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_16"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_17"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_18"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_19"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_20"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_21"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_22"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_23"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_24"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_25"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_26"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_27"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_28"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_29"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_30"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_31"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_32"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_34"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_35"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_36"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_37"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_38"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_39"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_40"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_41"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_42"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_43"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_44"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_45"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_46"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_47"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_48"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_49"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_50"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_51"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_52"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_53"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_54"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_55"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_56"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_57"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_58"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_59"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_60"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_61"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_62"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_63"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_65"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_66"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_67"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_68"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_69"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_70"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_71"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_72"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_73"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_74"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_50"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_76"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_77"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_79"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_80"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_81"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_82"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_83"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_84"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_85"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_86"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_87"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_88"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_89"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_90"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_91"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_92"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_93"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_94"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_95"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_96"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_97"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_98"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_99"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_100"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_101"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_102"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_103"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_104"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_105"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_106"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_107"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_108"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_109"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m22"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_1"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_2"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_3"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_4"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_5"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_6"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_7"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_8"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_9"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_10"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_11"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_12"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_13"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_14"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_15"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_16"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_17"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_18"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_19"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_20"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_21"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_22"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_23"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_24"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_25"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_26"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_27"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_28"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_29"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_31"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_33"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_34"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_35"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_36"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_37"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_38"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_39"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_40"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m23"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_1"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_2"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_3"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_4"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_5"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_6"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_7"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_8"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_9"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_10"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_11"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_12"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_13"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_14"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_15"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_17"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_18"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_19"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_21"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_22"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_23"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_24"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_25"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_26"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_27"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_28"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_29"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_30"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_31"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_32"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_34"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_35"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_36"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m24"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m24_1"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m24_2"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m24_3"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m24_4"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m24_5"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m24_6"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m24_8"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m24_9"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m24_10"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m24_11"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m25"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m25_1"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m25_2"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m25_3"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m25_5"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m25_6"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m25_7"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m25_8"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m25_9"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m25_10"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m26"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m27"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_1"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_2"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_4"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_5"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_6"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_7"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_8"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_9"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_10"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_11"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_12"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_13"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_14"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_15"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_16"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_17"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_18"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_19"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_20"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_21"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_22"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_23"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_24"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_25"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_26"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_27"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_28"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_29"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_30"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_31"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m27_32"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m28"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m29"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m30"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m30_1"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m30_2"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m30_3"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m31"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m31_1"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m31_2"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m31_3"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m31_4"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m32"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m33"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m33_1"],[2,1,50],[1,1,50],[0,0],[0,0],[1,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m33_3"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m33_4"],[2,1,50],[1,1,50],[0,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//Light Vehicles//
null = [["m2_2"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m4_8"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m4_15"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m5"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m6_9"],[0,0],[0,0],[1,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m6_10"],[0,0],[0,0],[1,0],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;

//
null = [["m7_1"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m8_1"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m9_1"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m10"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m11_3"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m11_4"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m12"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m13_23"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m13_37"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m14_12"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m14_17"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m16"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m16_5"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m17_2"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m18_5"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m18_14"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m19_2"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m19_8"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m21_33"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_64"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_75"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m21_78"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m22_30"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m22_32"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m23_16"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_20"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["m23_33"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;

//
null = [["m24_7"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m25_4"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m26"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m27_3"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m31_5"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m33_2"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;
//
null = [["m34"],[0,0],[0,0],[1,0,75],[0,0],[0,0],[0,0,0],[4,0,700,EAST,FALSE,FALSE]] call EOS_Spawn;