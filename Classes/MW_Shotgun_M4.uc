//=============================================================================
// KFWeap_Shotgun_M4
//=============================================================================
// Class Description
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//  - Author 3/19/2014
//=============================================================================

class MW_Shotgun_M4 extends KFWeap_Shotgun_M4;

var private float ReloadspeedMod;

simulated function float GetReloadRateScale()
{
	return Super.GetReloadRateScale() * ReloadspeedMod;
}

simulated event SetWeapon()
{
	super.SetWeapon();
	
	if(GetPerk().class == class'KFPerk_Support')
	{
		EquipTime = 0.20; // 0.45
		PutDownTime = 0.20; // 0.33
		MinFiringPutDownPct = 0.60; // 0.80
		ReloadspeedMod = 0.70; //30% faster
	}
}

defaultproperties
{
	ReloadspeedMod=1.0;
	// Ineventory
	InventorySize=6 //8
	GroupPriority=75
	WeaponSelectTexture=Texture2D'ui_weaponselect_tex.UI_WeaponSelect_Benelli'

    // FOV
 	MeshFOV=75
	MeshIronSightFOV=52
    PlayerIronSightFOV=70

	// Depth of field
	DOF_FG_FocalRadius=25
	DOF_FG_MaxNearBlurSize=3

	// Zooming/Position
	PlayerViewOffset=(X=15.0,Y=8.5,Z=-3.5)
	IronSightPosition=(X=5,Y=-0.025,Z=-0.03)

	// Content
	PackageKey="M4Shotgun"
	FirstPersonMeshName="WEP_1P_M4Shotgun_MESH.Wep_1stP_M4Shotgun_Rig"
	FirstPersonAnimSetNames(0)="WEP_1P_M4Shotgun_ANIM.Wep_1st_M4Shotgun_ANIM"
	PickupMeshName="WEP_3P_M4Shotgun_MESH.Wep_M4Shotgun_Pickup"
	AttachmentArchetypeName="WEP_M4Shotgun_ARCH.Wep_M4Shotgun_3P"
	MuzzleFlashTemplateName="WEP_M4Shotgun_ARCH.Wep_M4Shotgun_MuzzleFlash"

	// DEFAULT_FIREMODE
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_ShotgunSingle'
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_Projectile
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_Pellet'
	InstantHitDamage(DEFAULT_FIREMODE)=35.0 //28 //30
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'Custom_KFDT_Ballistic_M4Shotgun'
	PenetrationPower(DEFAULT_FIREMODE)=1.75 //2
	FireInterval(DEFAULT_FIREMODE)=0.2  // 265 RPM //0.225 //0.3
	Spread(DEFAULT_FIREMODE)=0.19
	FireOffset=(X=30,Y=5,Z=-4)
	// Shotgun
	NumPellets(DEFAULT_FIREMODE)=12 //7 //8

	// ALT_FIREMODE
	FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_ShotgunAuto'
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponBurstFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_Projectile //EWFT_Projectile
	WeaponProjectiles(ALTFIRE_FIREMODE)=class'KFProj_Bullet_Pellet'
	InstantHitDamage(ALTFIRE_FIREMODE)=35.0 //28
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'Custom_KFDT_Ballistic_M4Shotgun'
	FireInterval(ALTFIRE_FIREMODE)=+0.1// 1000 RPM //0.06 //0.08
	PenetrationPower(ALTFIRE_FIREMODE)=0.5 //2.0
	NumPellets(ALTFIRE_FIREMODE)=12 //7 //8
	Spread(ALTFIRE_FIREMODE)=0.19
	BurstAmount=3
	BurstFire2RdAnim=Shoot_Burst2
	BurstFire3RdAnim=Shoot_Burst
	BurstFire2RdSightedAnim=Shoot_Burst2_Iron
	BurstFire3RdSightedAnim=Shoot_Burst_Iron


	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_M4Shotgun'
	InstantHitDamage(BASH_FIREMODE)=28

	// Fire Effects
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_M4.Play_WEP_SA_M4_Fire_3P', FirstPersonCue=AkEvent'WW_WEP_SA_M4.Play_WEP_SA_M4_Fire_1P')
    WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_M4.Play_WEP_SA_M4_Fire_3P', FirstPersonCue=AkEvent'WW_WEP_SA_M4.Play_WEP_SA_M4_Fire_1P')

	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_M4.Play_WEP_SA_M4_Handling_DryFire'
	WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_SA_M4.Play_WEP_SA_M4_Handling_DryFire'

	// Attachments
	bHasIronSights=true
	bHasFlashlight=true

	// Ammo
	MagazineCapacity[0]=8
	SpareAmmoCapacity[0]=94 //64
	InitialSpareMags[0]=3
	bCanBeReloaded=true
	bReloadFromMagazine=false

	// Recoil
	maxRecoilPitch=600 //675
	minRecoilPitch=600
	maxRecoilYaw=375
	minRecoilYaw=-375
	RecoilRate=0.075
	RecoilBlendOutRatio=0.25
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=900
	RecoilMinPitchLimit=64785
	RecoilISMaxYawLimit=50
	RecoilISMinYawLimit=65485
	RecoilISMaxPitchLimit=500
	RecoilISMinPitchLimit=65485
	RecoilViewRotationScale=0.7
	FallingRecoilModifier=1.5
	HippedRecoilModifier=1.3 //1.5

	AssociatedPerkClasses(0)=class'KFPerk_Support'

	WeaponFireWaveForm=ForceFeedbackWaveform'FX_ForceFeedback_ARCH.Gunfire.Heavy_Recoil_SingleShot'

	// Weapon Upgrade stat boosts
	//WeaponUpgrades[1]=(IncrementDamage=1.1f,IncrementWeight=1)
	//WeaponUpgrades[2]=(IncrementDamage=1.2f,IncrementWeight=2)

	//WeaponUpgrades[1]=(Stats=((Stat=EWUS_Damage0, Scale=1.1f), (Stat=EWUS_Weight, Add=1)))
	//WeaponUpgrades[2]=(Stats=((Stat=EWUS_Damage0, Scale=1.2f), (Stat=EWUS_Weight, Add=2)))
}