//Reserved Slot
if (str(player) in ["p7", "p7_1", "p7_2", "p7_3","p7_4","p7_5","p7_6","p7_7"]) Then
{
   switch (getPlayerUID(player)) do
   {
      case "76561198011874851";
      case "76561197992878279"; 
      case "76561198033259442"; 
      case "76561198011660699"; 
	  case "76561198011568800";
	  case "76561198079107993";
	  case "76561198165805406";
	  case "76561198117240462";
	  case "76561198060544259";
	  case "76561198049949414";
      case "UID_N": {/* nothing to do */};
      default {endMission "endType";};
   };
};

//dynamic group
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;