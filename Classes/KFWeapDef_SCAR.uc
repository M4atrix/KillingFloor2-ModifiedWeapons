class KFWeapDef_SCAR extends KFWeaponDefinition
abstract;

static function string GetItemName()
{
	return Localize("KFWeap_AssaultRifle_SCAR", "ItemName", "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_AssaultRifle_SCAR", "ItemCategory", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_AssaultRifle_SCAR", KeyName, "KFGameContent");
}

static function string GetItemDescription()
{
	return Localize("KFWeap_AssaultRifle_SCAR", "ItemDescription", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_AssaultRifle_SCAR"
	BuyPrice=3000
	AmmoPricePerMag=33
	ImagePath="ui_weaponselect_tex.UI_WeaponSelect_SCAR"
	EffectiveRange=70
}
