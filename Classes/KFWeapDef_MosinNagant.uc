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

static function string GetItemDescription()
{
	return "Damage: 270 -> 350" $
	"\nReload speed: 0.70x (30% faster)" $
	"\n60 RPM -> 70 RPM" $
	"\nEquip and Put down faster.";
	
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


DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_Rifle_MosinNagant"

	BuyPrice=1400 //1200
	AmmoPricePerMag=42
	ImagePath="wep_ui_mosin_tex.UI_WeaponSelect_MosinNagant"

	IsPlayGoHidden=true;

	EffectiveRange=90


	SharedUnlockId=SCU_MosinNagant
}
