//=============================================================================
// KFDT_Ballistic_G36K
//=============================================================================
// Class Description
//=============================================================================
// Killing Floor 2
// Copyright (C) 2022 Tripwire Interactive LLC
//
//=============================================================================

class KFDT_Ballistic_G36K extends KFDT_Ballistic_G36C
	abstract
	hidedropdown;

defaultproperties
{
    KDamageImpulse=900
	KDeathUpKick=-300
	KDeathVel=100

	DamageModifierAP=0.8f
	ArmorDamageModifier=15.0f
	
	StumblePower=15
	GunHitPower=15

	WeaponDef=class'KFWeapDef_G36K'

	//Perk
	ModifierPerkList(0)=class'KFPerk_Commando'
}
