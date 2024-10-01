//=============================================================================
// KFWeapDef_Crovel
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients). 
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_M4 extends KFWeaponDefinition
	abstract;

static function string GetItemName()
{
	return "M4 Combat Shotgun";
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_Shotgun_M4", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_Shotgun_M4", "ItemCategory", "KFGameContent");
}


static function string GetItemDescription()
{
	return 
	"\n*RPM 225 -> 300" $
	"\n*SpareAmmo increased" $
	"\n*Major change to recoil" $
	"\n*Burst Fire mode" $
	"\n*Lesser stumble power";
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_Shotgun_M4"

	BuyPrice=1500
	AmmoPricePerMag=31 //40 //38
	ImagePath="ui_weaponselect_tex.UI_WeaponSelect_Benelli"

	EffectiveRange=35

	//UpgradePrice[0]=700
	//UpgradePrice[1]=1500

	//UpgradeSellPrice[0]=525
	//UpgradeSellPrice[1]=1650
}
