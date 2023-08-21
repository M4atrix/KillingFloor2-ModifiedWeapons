class KFWeapDef_Schneidzekk extends KFWeaponDefinition
	abstract;
	
static function string GetItemName() 
{
	return "Schneidzekk Medic Gun";
}

static function string GetItemDescription()
{
    return "=>Schneidzekk Medic Gun";
    // $ "\n=> ADS Vertical recoil increased by 95(30%)"
}

static function string GetItemLocalization(string KeyName)
{
    if(KeyName == "ItemName")
    {
        return GetItemName();
    }
    return Localize("KFWeap_SMG_Kriss", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
    return Localize("KFWeap_SMG_Kriss", "ItemCategory", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_SMG_Medic_Schneidzekk"
	BuyPrice=1500
	AmmoPricePerMag=40 
	ImagePath="WEP_UI_KRISS_TEX.UI_WeaponSelect_KRISS"
	EffectiveRange=70
}
