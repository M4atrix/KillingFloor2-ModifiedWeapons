class KFWeapDef_FNFalCM_2x extends KFWeaponDefinition
abstract;

static function string GetItemName()
{
	return "FN FAL CM - 2x Scope";
}

static function string GetItemDescription()
{
	return "*Damage: 70 -> 65" $
	//"\n*Bullet type:FN_FAL -> SCAR" $
	"\n*Scope: x4 Acog -> x2 Scar" $
	"\n*Penetration: 2.0 -> 1.0" $
	"\n*RPM 606 -> 700" $
	"\n*SpareAmmo: 160 -> 280" $
	"\n*VerticalRecoil: 165-200 -> 170-170" $
	"\n*HorizontalRecoil: -165 to 190 -> -125 to 145";
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
	WeaponClassPath="ModifiedWeapons.MW_AssaultRifle_FNFalCM_2x"
	BuyPrice=1700
	AmmoPricePerMag=47
	ImagePath="WEP_UI_FNFAL_TEX.UI_WeaponSelect_FNFAL"
	EffectiveRange=70
}
