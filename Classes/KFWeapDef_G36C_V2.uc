//=============================================================================
// KFWeaponDefintion
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients). 
//=============================================================================
// Killing Floor 2
// Copyright (C) 2022 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_G36C_V2 extends KFWeapDef_G36C
	abstract;
	
static function String GetItemLocalization(String KeyName)
{
    return class'KFGame.KFWeapDef_G36C'.static.GetItemLocalization(KeyName);
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_AssaultRifle_G36C_V2"
	BuyPrice=1600
	AmmoPricePerMag=32 // 36
	ImagePath="WEP_UI_G36_V2_TEX.UI_WeaponSelect_G36C_V2"

}
