//=============================================================================
// KFWeapDef_MosinNagant
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients).
//=============================================================================
// Killing Floor 2
// Copyright (C) 2019 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_P90 extends KFWeaponDefinition
	abstract;
static function string GetItemName()
{
	return Localize("KFWeap_SMG_P90", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_SMG_P90", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_SMG_P90", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
	return Localize("KFWeap_SMG_P90", "ItemDescription", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_SMG_P90"

	BuyPrice=1200
	AmmoPricePerMag=42
	ImagePath="WEP_UI_P90_TEX.UI_WeaponSelect_FNP90"

	IsPlayGoHidden=true;

	EffectiveRange=50

	UpgradePrice[0]=1100
	UpgradePrice[1]=1500

	UpgradeSellPrice[0]=525
	UpgradeSellPrice[1]=1650

	
}
