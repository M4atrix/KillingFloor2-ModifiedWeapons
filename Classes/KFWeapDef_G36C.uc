class KFWeapDef_G36C extends KFWeaponDefinition
	abstract;
static function string GetItemName()
{
	return Localize("KFWeap_AssaultRifle_G36C", "ItemName", "KFGameContent");
}

static function string GetItemDescription()
{
	return "Empty reload speed: 1.00 -> 1.20 (20% slower)";
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_AssaultRifle_G36C", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_AssaultRifle_G36C", "ItemCategory", "KFGameContent");
}


DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_AssaultRifle_G36C"

	BuyPrice=2500
	AmmoPricePerMag=36
	ImagePath="wep_ui_g36c_tex.UI_WeaponSelect_G36C" 

	IsPlayGoHidden=true;

	EffectiveRange=70


}
