//=============================================================================
// KFWeap_AssaultRifle_AR15
//=============================================================================
// Class Description
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//  - Author 8/8/2013
//=============================================================================

class MW_AssaultRifle_MK18 extends KFWeap_ScopedBase;

defaultproperties
{
	// 2D scene capture
	Begin Object Name=SceneCapture2DComponent0
	   TextureTarget=TextureRenderTarget2D'Wep_Mat_Lib.WEP_ScopeLense_Target'
	   FieldOfView=12.5 // "2.0X" = 25.0(our real world FOV determinant)/2.0
	End Object

    ScopedSensitivityMod=8.0
    ScopeMICIndex=3
	ScopeLenseMICTemplate=MaterialInstanceConstant'WEP_1P_MK18_MAT.WEP_1P_MK18_Scope_MAT'
	
	// Shooting Animations
	FireSightedAnims[0]=Shoot_Iron
	FireSightedAnims[1]=Shoot_Iron2
	FireSightedAnims[2]=Shoot_Iron3

    // FOV
	MeshFOV=80 //70
	MeshIronSightFOV=50
    PlayerIronSightFOV=70

	// Depth of field
	DOF_BlendInSpeed=3.0	
	DOF_FG_FocalRadius=0//70
	DOF_FG_MaxNearBlurSize=3.5

	// Zooming/Position
	PlayerViewOffset=(X=9.0,Y=10,Z=-4)
	
	// AI warning system
	bWarnAIWhenAiming=true
	AimWarningDelay=(X=0.4f, Y=0.8f)
	AimWarningCooldown=0.0f

	// Content
	PackageKey="MK18"
	FirstPersonMeshName="WEP_1P_MK18_MESH.Wep_1stP_MK18_Rig"
	FirstPersonAnimSetNames(0)="WEP_1P_AR15_9mm_ANIM.Wep_1stP_AR15_9mm_Anim"
	PickupMeshName="WEP_3P_MK18_MESH.Wep_MK18_Pickup"
	AttachmentArchetypeName="WEP_MK18_ARCH.Wep_AR15_9mm_3P"
	MuzzleFlashTemplateName="WEP_MK18_ARCH.Wep_AR15_9MM_MuzzleFlash"
	
	LaserSightTemplate=KFLaserSightAttachment'FX_LaserSight_ARCH.LaserSight_WithAttachment_1P'

   	// Zooming/Position
	IronSightPosition=(X=-7,Y=0,Z=-1.2)

	// Ammo
	MagazineCapacity[0]=30
	SpareAmmoCapacity[0]=390
	InitialSpareMags[0]=3 //6
	bCanBeReloaded=true
	bReloadFromMagazine=true

	// Recoil
	/*maxRecoilPitch=225
	minRecoilPitch=150
	maxRecoilYaw=150
	minRecoilYaw=-150
	RecoilRate=0.085
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=900
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=75
	RecoilISMinYawLimit=65460
	RecoilISMaxPitchLimit=195
	RecoilISMinPitchLimit=65460
	RecoilViewRotationScale=0.25
	IronSightMeshFOVCompensationScale=1.5 */

	maxRecoilPitch=90
	minRecoilPitch=60
	maxRecoilYaw=90
	minRecoilYaw=-90
	RecoilRate=0.085
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=900
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=100
	RecoilISMinYawLimit=65460
	RecoilISMaxPitchLimit=350
	RecoilISMinPitchLimit=65460
	IronSightMeshFOVCompensationScale=1.9
	HippedRecoilModifier=1.25

	// Inventory / Grouping
	InventorySize=7
	GroupPriority=25
	WeaponSelectTexture=Texture2D'WEP_MK18_TEX.mk18_ui'

	// DEFAULT_FIREMODE
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletAuto'
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_AssaultRifle'
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_MK18'
	FireInterval(DEFAULT_FIREMODE)=+0.0896 // 0.086 700 RPM
	//PenetrationPower(DEFAULT_FIREMODE)=2.0
	Spread(DEFAULT_FIREMODE)=0.0085
	InstantHitDamage(DEFAULT_FIREMODE)=50.0 //24 //30 //100
	FireOffset=(X=30,Y=4.5,Z=-4)

	// ALT_FIREMODE
	FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(ALTFIRE_FIREMODE)=class'KFProj_Bullet_AssaultRifle'
	FireInterval(ALTFIRE_FIREMODE)=+0.12 // 500 RPM
	//PenetrationPower(ALTFIRE_FIREMODE)=2.0
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'KFDT_Ballistic_MK18'
	InstantHitDamage(ALTFIRE_FIREMODE)=50.0 //20 //100
	Spread(ALTFIRE_FIREMODE)=0.0085

	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_AR15'
	InstantHitDamage(BASH_FIREMODE)=24

	// Fire Effects
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_MP7.Play_MP7_Fire_3P_Loop', FirstPersonCue=AkEvent'WW_WEP_MP7.Play_MP7_Fire_1P_Loop')
	WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_MP7.Play_MP7_Fire_3P_Single', FirstPersonCue=AkEvent'WW_WEP_MP7.Play_MP7_Fire_1P_Single')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_MedicSMG.Play_SA_MedicSMG_Handling_DryFire'
	WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_SA_MedicDart.Play_WEP_SA_Medic_Dart_DryFire'

	// Advanced (High RPM) Fire Effects
	bLoopingFireSnd(DEFAULT_FIREMODE)=true
	WeaponFireLoopEndSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_MP7.Play_MP7_Fire_3P_EndLoop', FirstPersonCue=AkEvent'WW_WEP_MP7.Play_MP7_Fire_1P_EndLoop')
	SingleFireSoundIndex=ALTFIRE_FIREMODE

	// Attachments
	bHasIronSights=true
	bHasFlashlight=true
	bHasLaserSight=true

	AssociatedPerkClasses(0)=class'KFPerk_Commando'

	// Weapon Upgrade stat boosts
	//WeaponUpgrades[1]=(Stats=((Stat=EWUS_Damage0, Scale=1.2f), (Stat=EWUS_Damage1, Scale=1.2f), (Stat=EWUS_Weight, Add=0)))
}

