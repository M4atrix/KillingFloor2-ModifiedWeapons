//=============================================================================
// KFDT_Ballistic_M4Shotgun
//=============================================================================
// Class Description
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//  - Author 4/9/2014
//=============================================================================

class Custom_KFDT_Ballistic_M4Shotgun extends KFDT_Ballistic_Shotgun
	abstract
	hidedropdown;

/** Allows the damage type to customize exactly which hit zones it can dismember */
static simulated function bool CanDismemberHitZone( name InHitZoneName )
{
	if( super.CanDismemberHitZone( InHitZoneName ) )
	{
		return true;
	}

	switch ( InHitZoneName )
	{
		case 'lupperarm':
		case 'rupperarm':
		case 'chest':
		case 'heart':
	 		return true;
	}

	return false;
}

defaultproperties
{
	BloodSpread=0.4
	BloodScale=0.6

	KDamageImpulse=900
	KDeathUpKick=-500
	KDeathVel=350
	StunPower=20 //15 //40 //8
	//KDamageImpulse=350
	//KDeathUpKick=120
	//KDeathVel=10

    KnockdownPower=0
	StumblePower=0 //12
	GunHitPower=0
	bCanZedTime=true

	WeaponDef=class'KFWeapDef_M4'
	ModifierPerkList(0)=class'KFPerk_SWAT'
	ModifierPerkList(1)=class'KFPerk_Support'
}
