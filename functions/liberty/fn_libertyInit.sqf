params["_destroyer", ["_weapons", true], ["_arsenal", true], ["_bridge", true], ["_bays", true], ["_heli", true], ["_sub", true]];

if(_weapons) then { [_destroyer] call GSRI_fnc_libertyWeapons };
if(_arsenal) then { [_destroyer] call GSRI_fnc_libertyArsenal };
if(_bridge) then { [_destroyer] call GSRI_fnc_libertyBridge };
if(_bays) then { [_destroyer] call GSRI_fnc_libertyBays };
if(_heli) then { [_destroyer] call GSRI_fnc_initHeli };
if(_sub) then { [_destroyer] call GSRI_fnc_initSubmarine };

if(isServer) then {
	// Add map marker
	_mk = createMarker ["marker_destroyer", _destroyer];
	_mk setMarkerType "flag_France";
	_mk setMarkerText "D-651 Normandie";

	// Add restricted zone sign
	_sign = "SignAd_Sponsor_F" createVehicle [0,0,0];
	_sign enableSimulation false;
	_sign attachTo [_destroyer, [-1.912,6.641,8.27]];
	_sign setDir 270;
	_sign setObjectTextureGlobal [0, "images\zone_preparation.paa"];

	// Add "to submarine" sign
	_sign2 = "SignAd_Sponsor_F" createVehicle [0,0,0];
	_sign2 enableSimulation false;
	_sign2 attachTo [_destroyer, [-2.91199,14.007,7.465]];
	_sign2 setDir 270;
	_sign2 setObjectTextureGlobal [0, "images\vers_sousmarin.paa"];

	// Add "to heli" sign
	_sign2 = "SignAd_SponsorS_F" createVehicle [0,0,0];
	_sign2 enableSimulation false;
	_sign2 attachTo [_destroyer, [-10.116,50.833,9.2]];
	_sign2 setDir 270;
	_sign2 setObjectTextureGlobal [0, "images\vers_heli.paa"];
};