//=============================================================================
// KFWeap_Pistol_DualDeagle
//=============================================================================
// A set of Desert Eagle pistols
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
// Jeff Robinson
//=============================================================================

class MW_DualAutoMag extends KFWeap_DualBase;

defaultproperties
{
	// Content
	PackageKey="Dual_AutoMag"
	FirstPersonMeshName="WEP_1P_AutoMag5_MESH.Wep_1stP_Dual_AutoMag5_Rig"
	FirstPersonAnimSetNames(0)="WEP_1P_Dual_Deagle_ANIM.Wep_1stP_Dual_Deagle_Anim"
	PickupMeshName="WEP_3P_AutoMag5_MESH.Wep_AutoMagV_Pickup"
	AttachmentArchetypeName="WEP_AutoMag5_ARCH.Wep_Dual_AutoMagV_3P"
	MuzzleFlashTemplateName="WEP_Dual_Deagle_ARCH.Wep_Dual_Deagle_MuzzleFlash"

	FireOffset=(X=17,Y=4.0,Z=-2.25)
	LeftFireOffset=(X=17,Y=-4,Z=-2.25)

	// Zooming/Position
	IronSightPosition=(X=-1,Y=0,Z=0)
	PlayerViewOffset=(X=9,Y=0,Z=-5)
	QuickWeaponDownRotation=(Pitch=-8192,Yaw=0,Roll=0)

	SingleClass=class'MW_AutoMag'

	// FOV
	MeshFOV=86
	MeshIronSightFOV=77
    PlayerIronSightFOV=77

	// Depth of field
	DOF_FG_FocalRadius=38
	DOF_FG_MaxNearBlurSize=3.5

	// Ammo
	MagazineCapacity[0]=14 // twice as much as single
	SpareAmmoCapacity[0]=466 //266
	InitialSpareMags[0]=2
	AmmoPickupScale[0]=1.0
	bCanBeReloaded=true
	bReloadFromMagazine=true

	// Recoil
	maxRecoilPitch=650 //450
	minRecoilPitch=650 //400
	maxRecoilYaw=150 //150
	minRecoilYaw=-150
	RecoilRate=0.07
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=900
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=50
	RecoilISMinYawLimit=65485
	RecoilISMaxPitchLimit=500
	RecoilISMinPitchLimit=65485

	// DEFAULT_FIREMODE
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_PistolDeagle'
	FireInterval(DEFAULT_FIREMODE)=+0.11 // about twice as fast as single
	InstantHitDamage(DEFAULT_FIREMODE)=320.0
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_AutoMag'
	PenetrationPower(DEFAULT_FIREMODE)=4.0
	Spread(DEFAULT_FIREMODE)=0.01

	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'

	// ALTFIRE_FIREMODE
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(ALTFIRE_FIREMODE)=class'KFProj_Bullet_PistolDeagle'
	FireInterval(ALTFIRE_FIREMODE)=+0.11 // about twice as fast as single
	InstantHitDamage(ALTFIRE_FIREMODE)=320.0
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'KFDT_Ballistic_AutoMag'
	PenetrationPower(ALTFIRE_FIREMODE)=4.0
	Spread(ALTFIRE_FIREMODE)=0.01

	FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'

	// BASH_FIREMODE
	InstantHitDamage(BASH_FIREMODE)=240
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_Deagle'

	// Fire Effects
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_SW500.Play_WEP_SA_SW500_Fire_3P', FirstPersonCue=AkEvent'WW_WEP_SA_SW500.Play_WEP_SA_SW500_Fire_1P')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_SW500.Play_WEP_SA_SW500_Handling_DryFire'

	WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_SW500.Play_WEP_SA_SW500_Fire_3P', FirstPersonCue=AkEvent'WW_WEP_SA_SW500.Play_WEP_SA_SW500_Fire_1P')
	WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_SA_SW500.Play_WEP_SA_SW500_Handling_DryFire'

	// Attachments
	bHasIronSights=true
	bHasFlashlight=false

	// Inventory
	InventorySize=4
	GroupPriority=45
	bCanThrow=true
	bDropOnDeath=true
	WeaponSelectTexture=Texture2D'WEP_UI_AutoMag_TEX.dualautomag_ui'
	bIsBackupWeapon=false
	AssociatedPerkClasses(0)=class'KFPerk_Gunslinger'

    BonesToLockOnEmpty=(RW_Slide, RW_Bullets1)
    BonesToLockOnEmpty_L=(LW_Slide, LW_Bullets1)

    bHasFireLastAnims=true

    // Weapon Upgrade stat boosts
	//WeaponUpgrades[1]=(IncrementDamage=1.25f,IncrementWeight=2)
	//WeaponUpgrades[2]=(IncrementDamage=1.4f,IncrementWeight=4)

	//WeaponUpgrades[1]=(Stats=((Stat=EWUS_Damage0, Scale=1.25f), (Stat=EWUS_Damage1, Scale=1.25f), (Stat=EWUS_Weight, Add=0)))
	//WeaponUpgrades[2]=(Stats=((Stat=EWUS_Damage0, Scale=1.5f), (Stat=EWUS_Damage1, Scale=1.5f), (Stat=EWUS_Weight, Add=0)))
	//WeaponUpgrades[3]=(Stats=((Stat=EWUS_Damage0, Scale=1.75f), (Stat=EWUS_Damage1, Scale=1.75f), (Stat=EWUS_Weight, Add=0)))
	//WeaponUpgrades[4]=(Stats=((Stat=EWUS_Damage0, Scale=2.0f), (Stat=EWUS_Damage1, Scale=2.0f), (Stat=EWUS_Weight, Add=0)))
}

