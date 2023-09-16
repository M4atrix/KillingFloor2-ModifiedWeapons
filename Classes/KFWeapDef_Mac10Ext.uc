//=============================================================================
// KFWeapDef_Mac10
//=============================================================================
//
//=============================================================================
// Killing Floor 2
// Copyright (C) 2017 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_Mac10Ext extends KFWeaponDefinition
	abstract;

	static function string GetItemName()
{
	return "Mac10 Ext";
}

static function string GetItemDescription()
{
	return ".";
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_SMG_Mac10_Ext"

	BuyPrice=1100
	AmmoPricePerMag=32
	ImagePath="WEP_UI_MAC10_TEX.UI_WeaponSelect_Mac10"

	EffectiveRange=70

	/*UpgradePrice[0]=700
	UpgradePrice[1]=1500

	UpgradeSellPrice[0]=525
	UpgradeSellPrice[1]=1650 */
}