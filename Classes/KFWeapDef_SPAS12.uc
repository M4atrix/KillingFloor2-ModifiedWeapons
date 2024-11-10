//=============================================================================
// KFWeapDef_Crovel
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients). 
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_SPAS12 extends KFWeaponDefinition
	abstract;

static function string GetItemName()
{
	return "Franchi SPAS-12";
}

static function string GetItemDescription()
{
	return "You really are just like me. The question is, are you any better?";
}

static function string GetItemLocalization(string KeyName)
{
	return "Franchi SPAS-12";
}

static function string GetItemCategory()
{
	return "Franchi SPAS-12";
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_Shotgun_SPAS12"

	BuyPrice=2500
	AmmoPricePerMag=56 //32
	ImagePath="Spas12xASVAL_UI.UI_WeaponSelect_Spas12"

	EffectiveRange=20

	/*UpgradePrice[0]=500
	UpgradePrice[1]=600
	UpgradePrice[2]=700
	UpgradePrice[3]=1500

	UpgradeSellPrice[0]=375
	UpgradeSellPrice[1]=825
	UpgradeSellPrice[2]=1350
	UpgradeSellPrice[3]=2475  */
}
