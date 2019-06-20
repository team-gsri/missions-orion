// Getting parameters
params["_boat", "_weapons", "_arsenal", "_bays", "_deck"];

if(_weapons) then { [_boat] execVM "normandie\armement.sqf" };
if(_arsenal) then { [_boat] execVM "normandie\arsenal.sqf" };
if(_bays) then { [_boat] execVM "normandie\baies.sqf" };
if(_deck) then { [_boat] execVM "normandie\passerelle.sqf" };