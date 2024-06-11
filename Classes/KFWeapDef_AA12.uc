//=============================================================================
// KFWeaponDefintion
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients).
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_AA12 extends KFWeaponDefinition
	abstract;

static function string GetItemName()
{
	return "AA12";
}

static function string GetItemDescription()
{
	return "AA12 Shotgun";
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_Shotgun_AA12", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_Shotgun_AA12", "ItemCategory", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_Shotgun_AA12"

	BuyPrice=1500
	AmmoPricePerMag=110 //110 //82
	ImagePath="ui_weaponselect_tex.UI_WeaponSelect_AA12"

	EffectiveRange=30

	//UpgradePrice[0]=1500

	//UpgradeSellPrice[0]=1125
}
