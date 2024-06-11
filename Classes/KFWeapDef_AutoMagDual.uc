//=============================================================================
// KFWeaponDefintion
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients). 
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_AutoMagDual extends KFWeaponDefinition
	abstract;

static function string GetItemLocalization(string KeyName)
{
	switch( Caps(KeyName) )
	{
	case "ITEMNAME":
	    return "Dual Lighting Hawk";
	case "ITEMCATEGORY":
	    return class'KFWeapDef_DeagleDual'.Static.GetItemLocalization(KeyName);
	case "ITEMDESCRIPTION":
	    return "LEEEEONNNN HELP! HELP ME LEON!";
	}
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_DualAutoMag"

	BuyPrice=15000
	AmmoPricePerMag=67 //42
	ImagePath="WEP_UI_AutoMag_TEX.dualautomag_ui"

	EffectiveRange=50

	/*UpgradePrice[0]=4000
	UpgradePrice[1]=8000
	UpgradePrice[2]=12000
	UpgradePrice[3]=16000

	UpgradeSellPrice[0]=2500
	UpgradeSellPrice[1]=5000
	UpgradeSellPrice[2]=7500
	UpgradeSellPrice[3]=10000 */
}
