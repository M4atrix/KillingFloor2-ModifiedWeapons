class KFWeapDef_DualSW500_SS extends KFWeaponDefinition
abstract;

static function string GetItemName()
{
	return Localize("KFWeap_Revolver_DualSW500", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_Revolver_DualSW500", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_Revolver_DualSW500", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
	return "Stumble power: 60 -> 50" $
		   "\nReloadSpeed: 10% faster" $
		   "\nMagazineCap 10 -> 12";
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_Revolver_DualSW500_SS"
	
	BuyPrice=1700
	AmmoPricePerMag=50
	ImagePath="WEP_UI_Dual_SW_500_TEX.UI_WeaponSelect_DualSW500"
	
	EffectiveRange=50
}
