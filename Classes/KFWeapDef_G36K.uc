//=============================================================================
// KFWeaponDefintion
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients). 
//=============================================================================
// Killing Floor 2
// Copyright (C) 2022 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_G36K extends KFWeapDef_G36C
	abstract;
static function string GetItemName()
{
	return "G36K";
}

static function string GetItemDescription()
{
	return "Damage: 45 -> 50";
}

static function string GetItemLocalization(string KeyName)
{
	return "G36K";
}

static function string GetItemCategory()
{
	return "G36K";
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_AssaultRifle_G36K"
	BuyPrice=2000
	AmmoPricePerMag=36 // 36 //32
	ImagePath="WEP_UI_G36_V2_TEX.UI_WeaponSelect_G36K"
	WeaponUpgrades.Empty
}
