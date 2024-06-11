//=============================================================================
// KFWeapDef_Crovel
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients).
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_M107 extends KFWeaponDefinition
	abstract;

static function string GetItemLocalization(string KeyName)
{
	switch( Caps(KeyName) )
	{
	case "ITEMNAME":
	    return "M107A1 Cold Roar";
	case "ITEMCATEGORY":
	    return class'KFWeapDef_M14EBR'.Static.GetItemLocalization(KeyName);
	case "ITEMDESCRIPTION":
	    return "IS THIS A PB REFERENCE??";
	}
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_M107"

	BuyPrice=17000
	AmmoPricePerMag=100//60 //53
	ImagePath="WEP_UI_M107_TEX.UI_m107"

	EffectiveRange=100

	/*UpgradePrice[0]=4000
	UpgradePrice[1]=8000
	UpgradePrice[2]=12000
	UpgradePrice[3]=16000
	UpgradePrice[4]=20000

	UpgradeSellPrice[0]=10000
	UpgradeSellPrice[1]=12000
	UpgradeSellPrice[2]=14000
	UpgradeSellPrice[3]=16000 
	UpgradeSellPrice[4]=18000 */
}
