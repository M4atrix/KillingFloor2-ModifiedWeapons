//=============================================================================
// KFDT_Ballistic_M14EBR
//=============================================================================
// Ballistic damage with light impact energy, but stronger hit reactions
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================

class KFDT_Ballistic_M107 extends KFDT_Ballistic_Rifle
	abstract
	hidedropdown;

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
	KDamageImpulse=2250
	KDeathUpKick=-400
	KDeathVel=250

	FreezePower=5000 
	StumblePower=0
	GunHitPower=300 //50
	MeleeHitPower=0

	WeaponDef=class'KFWeapDef_M107'
	ModifierPerkList(0)=class'KFPerk_Sharpshooter'
}
