//=============================================================================
// KFWeaponDefintion
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients). 
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_DoubleBarrel extends KFWeaponDefinition
	abstract;

static function string GetItemName()
{
	return "DoubleBarrel Shotgun";
}

static function string GetItemDescription()
{
	return "Shotgun";
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_Shotgun_DoubleBarrel", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_Shotgun_DoubleBarrel", "ItemCategory", "KFGameContent");
}


DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_Shotgun_DoubleBarrel"

	BuyPrice=1200 //650
	AmmoPricePerMag=10 //11 //14
	ImagePath="ui_weaponselect_tex.UI_WeaponSelect_DBShotgun"

	EffectiveRange=15

	/*UpgradePrice[0]=600
	UpgradePrice[1]=700
	UpgradePrice[2]=1500

	UpgradeSellPrice[0]=450
	UpgradeSellPrice[1]=975
	UpgradeSellPrice[2]=2100 */
}
