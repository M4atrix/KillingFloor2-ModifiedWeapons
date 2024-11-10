//=============================================================================
// KFWeapDef_Crovel
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients).
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_Asval extends KFWeaponDefinition
	abstract;

static function string GetItemName()
{
	return "AS Val";
}

static function string GetItemDescription()
{
	return "Get Out Of Here, Stalker!";
}

static function string GetItemLocalization(string KeyName)
{
	return "AS Val";
}

static function string GetItemCategory()
{
	return "AS Val";
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_SMG_Asval"

	BuyPrice=1700
	AmmoPricePerMag=53//60
	ImagePath="Spas12xASVAL_UI.UI_WeaponSelect_ASVAL"

	EffectiveRange=90

	//UpgradePrice[0]=700
	//UpgradePrice[1]=1500

	//UpgradeSellPrice[0]=525
	//UpgradeSellPrice[1]=1650
}
