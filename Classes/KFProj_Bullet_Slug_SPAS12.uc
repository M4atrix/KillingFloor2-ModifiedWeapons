//=============================================================================
// KFProj_Bullet_Pellet
//=============================================================================
// Shotgun pellet class
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================

class KFProj_Bullet_Slug_SPAS12 extends KFProj_Bullet
	hidedropdown;

/** Cached reference to owner weapon */
var protected KFWeapon OwnerWeapon;

/** Initialize the projectile */
function Init( vector Direction )
{
	super.Init( Direction );

	OwnerWeapon = KFWeapon( Owner );
	if( OwnerWeapon != none )
	{
		OwnerWeapon.LastPelletFireTime = WorldInfo.TimeSeconds;
	}
}

/** Don't allow more than one pellet projectile to perform this check in a single frame */
function bool ShouldWarnAIWhenFired()
{
	return super.ShouldWarnAIWhenFired() && OwnerWeapon != none && OwnerWeapon.LastPelletFireTime < WorldInfo.TimeSeconds;
}

defaultproperties
{
	MaxSpeed=7000.0
	Speed=7000.0

	bWarnAIWhenFired=true

	DamageRadius=0

	ProjFlightTemplate=ParticleSystem'WEP_HRG_Stunner_EMIT.FX_HRG_Stunner_Tracer'
	ProjFlightTemplateZedTime=ParticleSystem'WEP_HRG_Stunner_EMIT.FX_HRG_Stunner_Tracer_ZEDTime'

	AmbientSoundPlayEvent=none
    AmbientSoundStopEvent=none
}