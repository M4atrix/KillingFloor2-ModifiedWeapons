//=============================================================================
// KFDT_Ballistic_AR15
//=============================================================================
// Class Description
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//  - Author 10/30/2013
//=============================================================================

class KFDT_Ballistic_MK18 extends KFDT_Ballistic_AssaultRifle
	abstract
	hidedropdown;

defaultproperties
{
	KDamageImpulse=900
	KDeathUpKick=-300
	KDeathVel=100
	
	KnockdownPower=0
	StumblePower=0
	GunHitPower=0

	WeaponDef=class'KFWeapDef_MK18'

	//Perk
	ModifierPerkList(0)=class'KFPerk_Commando'
}
