comment "Exported from Arsenal by [-GSRI-] Lisitius";

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
player forceAddUniform "VSM_G2_camo_MultiCam";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_tourniquet";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 15 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_Chemlight_White";};
player addItemToUniform "16Rnd_9x21_Mag";
player addVest "VSM_MBSS_PACA_BattleBelt_operator";
for "_i" from 1 to 4 do {player addItemToVest "ACE_salineIV_500";};
for "_i" from 1 to 2 do {player addItemToVest "adv_aceSplint_splint";};
player addItemToVest "SMA_30Rnd_556x45_M855A1";
for "_i" from 1 to 2 do {player addItemToVest "SMA_30Rnd_556x45_Mk318";};
for "_i" from 1 to 6 do {player addItemToVest "SMA_30Rnd_556x45_Mk262";};
player addItemToVest "B_IR_Grenade";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";
player addItemToVest "ACE_HandFlare_White";
player addItemToVest "16Rnd_9x21_Mag";
player addHeadgear "Booniehat_CE_hs";

comment "Add weapons";
player addWeapon "SMA_MK18MOEBLKTAN_SM";
player addPrimaryWeaponItem "SMA_rotex_blk";
player addPrimaryWeaponItem "SMA_SFFL_BLK";
player addPrimaryWeaponItem "optic_ERCO_blk_F";
player addPrimaryWeaponItem "SMA_Gripod_01";
player addWeapon "hgun_Rook40_F";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
