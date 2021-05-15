params ["_grp", "_skillArray"];

// We are using ASR_AI, ignore !
/*
_grp=(_this select 0);
_skillArray=(_this select 1);

_skillset = server getVariable _skillArray;
{
    _unit = _x;
    {
        _skillvalue = (_skillset select _forEachindex) + (random 0.2) - (random 0.2);
        _unit setskill [_x, _skillvalue];
    } forEach ['aimingAccuracy', 'aimingShake', 'aimingspeed', 'spotdistance', 'spottime', 'courage', 'reloadspeed', 'commanding', 'general'];
    
    if (EOS_damage_MULTIPLIER != 1) then {
        _unit removeAllEventHandlers "Handledamage";
        _unit addEventHandler ["Handledamage", {
            _damage = (_this select 2)*EOS_damage_MULTIPLIER;
            _damage
        }];
    };
    if (EOS_KILLcountER) then {
        _unit addEventHandler ["killed", "null=[] execVM ""eos\functions\EOS_Killcounter.sqf"""]
    };
    // ADD CUStoM SCRIPTS to UNIT HERE
} forEach (units _grp);
*/