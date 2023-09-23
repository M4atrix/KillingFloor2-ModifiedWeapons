//=============================================================================
// KFWeapDef_MosinNagant
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients).
//=============================================================================
// Killing Floor 2
// Copyright (C) 2019 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_MosinNagant extends KFWeaponDefinition
	abstract;
static function string GetItemName()
{
	return Localize("KFWeap_Rifle_MosinNagant", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_Rifle_MosinNagant", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_Rifle_MosinNagant", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
	return Localize("KFWeap_Rifle_MosinNagant", "ItemDescription", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_Rifle_MosinNagant"

	BuyPrice=1200
	AmmoPricePerMag=42
	ImagePath="wep_ui_mosin_tex.UI_WeaponSelect_MosinNagant"

	IsPlayGoHidden=true;

	EffectiveRange=90

	//UpgradePrice[0]=700
	//UpgradePrice[1]=1500

	UpgradeSellPrice[0]=525
	UpgradeSellPrice[1]=1650

	SharedUnlockId=SCU_MosinNagant
}
