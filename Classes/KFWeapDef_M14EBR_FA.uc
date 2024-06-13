
class KFWeapDef_M14EBR_FA extends KFWeaponDefinition
	abstract;
	
static function string GetItemName() 
{
	return "M14 EBR - Full Auto";
}

static function string GetItemDescription()
{
    return "Real Life Accurate M14";
    // $ "\n=> ADS Vertical recoil increased by 95(30%)"
}

static function string GetItemLocalization(string KeyName)
{
    if(KeyName == "ItemName")
    {
        return GetItemName();
    }
    return Localize("KFWeap_Rifle_M14EBR", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
    return Localize("KFWeap_Rifle_M14EBR", "ItemCategory", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_Rifle_M14EBR_T"
	BuyPrice=7000
	AmmoPricePerMag=60 //53
	ImagePath="WEP_UI_M14EBR_TEX.UI_WeaponSelect_SM14-EBR"
	EffectiveRange=90
}
