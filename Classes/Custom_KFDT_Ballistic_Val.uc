//=============================================================================
// KFDT_Ballistic_P90
//=============================================================================
// Class Description
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//  - Author 11/20/2013
//=============================================================================

class Custom_KFDT_Ballistic_Val extends KFDT_Ballistic_Submachinegun
	abstract
	hidedropdown;

defaultproperties
{

	KDamageImpulse=900
	KDeathUpKick=-300
	KDeathVel=100

	StumblePower=0
	GunHitPower=15
	StunPower=20 //15 //40 //8


	WeaponDef=class'KFWeapDef_Asval'
	ModifierPerkList(0)=class'KFPerk_SWAT'
	
	
}
