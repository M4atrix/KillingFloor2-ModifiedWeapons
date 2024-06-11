//=============================================================================
// KFWeapDef_FAMAS
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients).
//=============================================================================
// Killing Floor 2
// Copyright (C) 2021 Tripwire Interactive LLC
//=============================================================================

class KFWeapDef_FAMAS extends KFWeaponDefinition
	abstract;

static function string GetItemName()
{
	return "FAMAS F1";
}

static function string GetItemDescription()
{
	return "Better FAMAS";
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_AssaultRifle_FAMAS", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_AssaultRifle_FAMAS", "ItemCategory", "KFGameContent");
}

defaultproperties
{
	WeaponClassPath="ModifiedWeapons.MW_AssaultRifle_FAMAS"

	BuyPrice=1200

	AmmoPricePerMag=25
	SecondaryAmmoMagPrice=15 //13
	SecondaryAmmoMagSize=6 // Num of bullets given (not magazines)

	ImagePath="WEP_UI_Famas_TEX.UI_WeaponSelect_Famas"

	IsPlayGoHidden=true;

	EffectiveRange=67 // @TODO: ¿?¿?¿?

	/*UpgradePrice[0]=700
	UpgradePrice[1]=1500

	UpgradeSellPrice[0]=525
	UpgradeSellPrice[1]=1650 */

	SharedUnlockId=SCU_FAMAS
}
