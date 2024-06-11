//=============================================================================
// KFDT_Ballistic_DBShotgun
//=============================================================================
// Ballistic damage with light impact energy, but stronger hit reactions
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
// John "Ramm-Jaeger" Gibson
//=============================================================================

class Custom_KFDT_Ballistic_DBShotgun extends KFDT_Ballistic_DBShotgun
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

	KDamageImpulse=3500
	KDeathUpKick=800 //600
	KDeathVel=650 //450
	StunPower=30 //15 //40 //8
	//KDamageImpulse=160 //600 //350
	GibImpulseScale=1.0
	//KDeathUpKick=250 //350
	//KDeathVel=15 //20 

    StumblePower=35  //8
	GunHitPower=45
	
	WeaponDef=class'KFWeapDef_DoubleBarrel'
}
