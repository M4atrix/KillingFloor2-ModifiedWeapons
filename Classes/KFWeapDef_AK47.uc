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
	return "Damage: 56 -> 50";
}

static function string GetItemLocalization(string KeyName)
{
	return "AK-47";
}

static function string GetItemCategory()
{
	return "AK-47";
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_AssaultRifle_AK47"

	BuyPrice=1200 //1100
	AmmoPricePerMag=50 //60
	ImagePath="WEP_AK47_TEX.UI_AK47_TEX"

	EffectiveRange=70
}
