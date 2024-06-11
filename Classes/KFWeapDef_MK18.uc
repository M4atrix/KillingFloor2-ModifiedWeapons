//=============================================================================
// KFWeaponDefintion
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients). 
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_MK18 extends KFWeaponDefinition
	abstract;

static function string GetItemLocalization(string KeyName)
{
	switch( Caps(KeyName) )
	{
	case "ITEMNAME":
	    return "MK18";
	case "ITEMCATEGORY":
	    return class'KFWeapDef_AR15'.Static.GetItemLocalization(KeyName);
	case "ITEMDESCRIPTION":
	    return "MK18 Daniel Defense. ";
	}
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_AssaultRifle_MK18"

	BuyPrice=3000
	AmmoPricePerMag=37
	ImagePath="WEP_MK18_TEX.mk18_ui"

	EffectiveRange=60

	//UpgradePrice[0]=1000

	//UpgradeSellPrice[0]=700
	WeaponUpgrades.Empty

}
