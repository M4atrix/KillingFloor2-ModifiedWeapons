//=============================================================================
// KFWeapDef_MKB42
//=============================================================================
// Killing Floor 2
// Copyright (C) 2017 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_AK47 extends KFWeaponDefinition
	abstract;

	static function string GetItemName()
{
	return "AK-47";
}

static function string GetItemDescription()
{
	return "BRRRRRA BRRRRA RA";
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_AssaultRifle_AK47"

	BuyPrice=1500 //1100
	AmmoPricePerMag=50 //60
	ImagePath="WEP_AK47_TEX.UI_AK47_TEX"

	EffectiveRange=70

	/*UpgradePrice[0]=1800
	UpgradeSellPrice[0]=1270 */
}
