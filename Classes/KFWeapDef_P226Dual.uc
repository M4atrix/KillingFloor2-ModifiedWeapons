//=============================================================================
// KFWeaponDefintion
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients). 
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_P226Dual extends KFWeaponDefinition
	abstract;

	static function string GetItemName()
{
	return "Dual SiG-P226";
}

static function string GetItemDescription()
{
	return "This weapon make me feels like i'm from certain Action Thriller movie.";
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_Pistol_DualP226"

	BuyPrice=2000
	AmmoPricePerMag=40
	ImagePath="WEP_P226_TEX.UI_DUAL_P226_TEX"

	EffectiveRange=50

	WeaponUpgrades.Empty
}
