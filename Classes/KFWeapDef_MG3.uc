//=============================================================================
// KFWeapDef_MG3
//=============================================================================
//
//=============================================================================
// Killing Floor 2
// Copyright (C) 2023 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_MG3 extends KFWeaponDefinition
	abstract;

	static function string GetItemName()
{
	return "MG-3";
}

static function string GetItemDescription()
{
	return "MG-42";
	
	
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_LMG_MG3", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_LMG_MG3", "ItemCategory", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_LMG_MG3"

	BuyPrice=4500 //2500
	AmmoPricePerMag=70
	ImagePath="WEP_UI_MG3_TEX.UI_WeaponSelect_MG3"

	IsPlayGoHidden=true;

	EffectiveRange=68

	SharedUnlockId=SCU_MG3
}