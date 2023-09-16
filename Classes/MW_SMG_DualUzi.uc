//=============================================================================
// KFWeap_Pistol_DualGlock
//=============================================================================
// A set of Glock pistols
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC, Jeff Robinson
// Copyright (C) 2017 HickDead
//=============================================================================

class MW_SMG_DualUzi extends KFWeap_DualBase;

simulated state WeaponFiring
{
	simulated function FireAmmunition()
	{
		bFireFromRightWeapon = !bFireFromRightWeapon;
		Super.FireAmmunition();
	}
}

defaultproperties
{

	PackageKey="UZIPRO"
	FirstPersonMeshName="WEP_UZIPRO_MESH.Wep_1stP_Dual_UZIPRO_Rig"
	FirstPersonAnimSetNames(0)="WEP_1P_Dual_M1911_ANIM.Wep_1stP_Dual_M1911_Anim"
	PickupMeshName="WEP_UZIPRO_MESH.Wep_UZIPRO_Pickup"
	AttachmentArchetypeName="WEP_UZIPRO_ARCH.Wep_Dual_UZIPRO_3P"
	MuzzleFlashTemplateName="WEP_Dual_M1911_ARCH.Wep_Dual_M1911_MuzzleFlash"

	FireOffset=(X=17,Y=4.0,Z=-2.25)
	LeftFireOffset=(X=17,Y=-4,Z=-2.25)

	// Zooming/Position
	IronSightPosition=(X=15,Y=0,Z=0)
	PlayerViewOffset=(X=16,Y=0,Z=-5)
	QuickWeaponDownRotation=(Pitch=-8192,Yaw=0,Roll=0)

	// FOV
	MeshFOV=75
	MeshIronSightFOV=60
	PlayerIronSightFOV=77

	// Depth of field
	DOF_FG_FocalRadius=40
	DOF_FG_MaxNearBlurSize=3.5

	// Ammo
	MagazineCapacity[0]=72
	SpareAmmoCapacity[0]=386
	InitialSpareMags[0]=4
	AmmoPickupScale[0]=2.0
	bCanBeReloaded=true
	bReloadFromMagazine=true

	// Recoil
	maxRecoilPitch=60
	minRecoilPitch=40
	maxRecoilYaw=50
	minRecoilYaw=-50
	RecoilRate=0.06
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=550 //900
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=75
	RecoilISMinYawLimit=65460
	RecoilISMaxPitchLimit=375
	RecoilISMinPitchLimit=65460
	IronSightMeshFOVCompensationScale=1.6
	WalkingRecoilModifier=1.1
	JoggingRecoilModifier=1.2

	// DEFAULT_FIREMODE
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_AssaultRifle'
	FireInterval(DEFAULT_FIREMODE)=+0.03	// twice as fast as single
	InstantHitDamage(DEFAULT_FIREMODE)=25.0
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_Uzi'
	Spread(DEFAULT_FIREMODE)=0.016

	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletAuto'

	// ALTFIRE_FIREMODE
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(ALTFIRE_FIREMODE)=class'KFProj_Bullet_AssaultRifle'
	FireInterval(ALTFIRE_FIREMODE)=+0.03	// twice as fast as single
	InstantHitDamage(ALTFIRE_FIREMODE)=25.0
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'KFDT_Ballistic_Uzi'
	Spread(ALTFIRE_FIREMODE)=0.016

	FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletAuto'

	// BASH_FIREMODE
	InstantHitDamage(BASH_FIREMODE)=30
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_Uzi'

	// Fire Effects
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_Mac_10.Play_Mac_10_Fire_3P_Single', FirstPersonCue=AkEvent'WW_WEP_Mac_10.Play_Mac_10_Fire_3P_Single')
	WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_Mac_10.Play_Mac_10_Fire_3P_Single', FirstPersonCue=AkEvent'WW_WEP_Mac_10.Play_Mac_10_Fire_1P_Single')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_MedicSMG.Play_SA_MedicSMG_Handling_DryFire'
	WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_SA_MedicDart.Play_WEP_SA_Medic_Dart_DryFire'

	// Attachments
	bHasIronSights=true
	bHasFlashlight=true

	// Inventory
	InventorySize=8
	GroupPriority=80
	bCanThrow=true
	bDropOnDeath=true
	WeaponSelectTexture=Texture2D'WEP_UZIPRO_TEX.UI_DUAL_UZI_PRO'
	bIsBackupWeapon=false
	AssociatedPerkClasses(0)=class'KFPerk_SWAT'

	SingleClass=class'MW_SMG_Uzi'

	BonesToLockOnEmpty=(RW_Bolt, RW_Bullets1)
	BonesToLockOnEmpty_L=(LW_Bolt, LW_Bullets1)

	bHasFireLastAnims=true
	WeaponUpgrades[1]=(Stats=((Stat=EWUS_Damage0, Scale=1.5f), (Stat=EWUS_Damage1, Scale=1.5f), (Stat=EWUS_Weight, Add=0)))
	WeaponUpgrades[2]=(Stats=((Stat=EWUS_Damage0, Scale=1.69f), (Stat=EWUS_Damage1, Scale=1.69f), (Stat=EWUS_Weight, Add=0)))
	WeaponUpgrades[3]=(Stats=((Stat=EWUS_Damage0, Scale=1.95f), (Stat=EWUS_Damage1, Scale=1.95f), (Stat=EWUS_Weight, Add=0)))
}