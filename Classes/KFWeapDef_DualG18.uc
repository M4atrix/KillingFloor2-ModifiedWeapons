//=============================================================================
// KFWeapDef_Pistol_DualG18
//=============================================================================
//
//=============================================================================
// Killing Floor 2
// Copyright (C) 2019 Tripwire Interactive LLC
// Fernando Ferrando @ Saber Interactive
//=============================================================================
class KFWeapDef_DualG18 extends KFWeaponDefinition
	abstract;
static function string GetItemName()
{
	return Localize("KFWeap_Pistol_DualG18", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_Pistol_DualG18", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_Pistol_DualG18", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
	return Localize("KFWeap_Pistol_DualG18", "ItemDescription", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_Pistol_DualG18"

	BuyPrice=2500 //Weapon Price
	AmmoPricePerMag=76//48

	EffectiveRange=40 //70 //Default Firemode (Automatic) & Altfire Firemode (Single Fire) range

	ImagePath="WEP_UI_Dual_G18C_TEX.UI_WeaponSelect_Dual_G18C"

	IsPlayGoHidden=true;

	UpgradePrice[0]=2000
	UpgradeSellPrice[0]=1125

}