class KFWeapDef_FNFal_4x_CM extends KFWeaponDefinition
abstract;

static function string GetItemName()
{
	return "FN FAL - ACOG";
}

static function string GetItemDescription()
{
	return "Damage: 71 -> 69" $
	"\nReloadSpeed: 10% faster" $
	"\nHorizontalRecoil:-165 to 190 -> -0 to 140 (only pulls to the right)" $
	"\nVerticalRecoil: 163-200 -> 230-230" $ //240
	"\nWeight 9kg -> 8kg";
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_AssaultRifle_FNFal", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_AssaultRifle_FNFal", "ItemCategory", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_AssaultRifle_FNFal_4x"
	BuyPrice=1500
	AmmoPricePerMag=47
	ImagePath="WEP_UI_FNFAL_TEX.UI_WeaponSelect_FNFAL"
	EffectiveRange=70
}
