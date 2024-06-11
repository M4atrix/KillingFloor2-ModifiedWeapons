//=============================================================================
// KFWeaponDefintion
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients). 
//=============================================================================
// Killing Floor 2
// Copyright (C) 2022 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_G36K_RDS extends KFWeapDef_G36C
	abstract;

DefaultProperties
{
	WeaponClassPath="ModifiedWeapons.MW_AssaultRifle_G36K_RDS"
	BuyPrice=1700
	AmmoPricePerMag=32 // 36
	ImagePath="WEP_UI_G36_V2_TEX.UI_WeaponSelect_G36K_RDS"

}
