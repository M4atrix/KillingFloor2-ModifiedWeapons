//=============================================================================
// KFWeap_Shotgun_MB500
//=============================================================================
// A Mossberg 500 Shotgun
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class MW_Shotgun_SPAS12 extends KFWeap_ShotgunBase;

var private float ReloadspeedMod;

simulated function float GetReloadRateScale()
{
	return Super.GetReloadRateScale() * ReloadspeedMod;
}

simulated event SetWeapon()
{
	super.SetWeapon();
	
	if(GetPerk().class == class'KFPerk_Swat')
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
	// Inventory
	InventorySize=6
	GroupPriority=25
	WeaponSelectTexture=Texture2D'Spas12xASVAL_UI.UI_WeaponSelect_Spas12'

    // FOV
	MeshIronSightFOV=52
    PlayerIronSightFOV=70

	// Depth of field
	DOF_FG_FocalRadius=95
	DOF_FG_MaxNearBlurSize=3.5

	// Zooming/Position
	PlayerViewOffset=(X=10.0000000,Y=8.0000000,Z=-3.5000000)
	IronSightPosition=(X=0.0000000,Y=5.0000000,Z=-1.0000000)

	// Content
	PackageKey="MB500"
	FirstPersonMeshName="WEP_Spas12_MESH.Wep_1stP_Spas12_Rig"
	FirstPersonAnimSetNames(0)="WEP_1P_MB500_ANIM.Wep_1st_MB500_Anim_New"
	PickupMeshName="WEP_Spas12_MESH.Wep_Spas12_Pickup"
    AttachmentArchetypeName="WEP_Spas12_ARCH.Wep_Spas12_3P"
    MuzzleFlashTemplateName="WEP_Spas12_ARCH.Wep_Spas12_MuzzleFlash"

	// DEFAULT_FIREMODE
	FireModeIconPaths(DEFAULT_FIREMODE)="ui_firemodes_tex.UI_FireModeSelect_ShotgunSingle"
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_Projectile
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_Pellet'
	InstantHitDamage(DEFAULT_FIREMODE)=35.0 ///20
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'Custom_KFDT_Ballistic_SPAS12'
	PenetrationPower(DEFAULT_FIREMODE)=1.75 //2
	FireInterval(DEFAULT_FIREMODE)=0.225 // 265 RPM
	FireOffset=(X=30.0000000,Y=3.0000000,Z=-3.0000000)
	// Shotgun
	NumPellets(DEFAULT_FIREMODE)=10 //7

	// ALT_FIREMODE
	FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_ShotgunSingle'
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_None

	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_MB500'
	InstantHitDamage(BASH_FIREMODE)=25

	// Fire Effects
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_Saiga12.Play_WEP_Saiga12_Fire_3P', FirstPersonCue=AkEvent'WW_WEP_Saiga12.Play_WEP_Saiga12_Fire_1P')
    WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_Saiga12.Play_WEP_Saiga12_Alt_Fire_3P', FirstPersonCue=AkEvent'WW_WEP_Saiga12.Play_WEP_Saiga12_Alt_Fire_1P')

    // using M4 dry fire sound. this is intentional.
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_M4.Play_WEP_SA_M4_Handling_DryFire'
	WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_SA_M4.Play_WEP_SA_M4_Handling_DryFire'

	// Attachments
	bHasIronSights=true
	bHasFlashlight=true

	// Ammo
	MagazineCapacity[0]=8
	SpareAmmoCapacity[0]=108 //56
	InitialSpareMags[0]=3
	bCanBeReloaded=true
	bReloadFromMagazine=false

	// Recoil
	maxRecoilPitch=900
	minRecoilPitch=775
	maxRecoilYaw=500
	minRecoilYaw=-500
	RecoilRate=0.085
	RecoilBlendOutRatio=0.35
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=1500
	RecoilMinPitchLimit=64785
	RecoilISMaxYawLimit=50
	RecoilISMinYawLimit=65485
	RecoilISMaxPitchLimit=500
	RecoilISMinPitchLimit=65485
	RecoilViewRotationScale=0.8
	FallingRecoilModifier=1.5
	HippedRecoilModifier=1.25

	AssociatedPerkClasses(0)=class'KFPerk_Support'
	AssociatedPerkClasses(1)=class'KFPerk_Swat'

	WeaponFireWaveForm=ForceFeedbackWaveform'FX_ForceFeedback_ARCH.Gunfire.Heavy_Recoil_SingleShot'

	// Weapon Upgrade stat boosts
	//WeaponUpgrades[1]=(IncrementDamage=1.25f,IncrementWeight=1)
	//WeaponUpgrades[2]=(IncrementDamage=1.5f,IncrementWeight=2)
	//WeaponUpgrades[3]=(IncrementDamage=1.75f,IncrementWeight=3)
	//WeaponUpgrades[4]=(IncrementDamage=2.0f,IncrementWeight=4)

	//WeaponUpgrades[1]=(Stats=((Stat=EWUS_Damage0, Scale=1.25f), (Stat=EWUS_Weight, Add=1)))
	//WeaponUpgrades[2]=(Stats=((Stat=EWUS_Damage0, Scale=1.5f), (Stat=EWUS_Weight, Add=2)))
	//WeaponUpgrades[3]=(Stats=((Stat=EWUS_Damage0, Scale=1.75f), (Stat=EWUS_Weight, Add=3)))
	//WeaponUpgrades[4]=(Stats=((Stat=EWUS_Damage0, Scale=2.0f), (Stat=EWUS_Weight, Add=4)))
}