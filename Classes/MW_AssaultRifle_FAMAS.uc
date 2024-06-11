//=============================================================================
// KFWeap_AssaultRifle_FAMAS
//=============================================================================
// FAMAS assault rifle with an extra of shotgun. Better than in MGS!
//=============================================================================
// Killing Floor 2
// Copyright (C) 2021 Tripwire Interactive LLC
//=============================================================================

class MW_AssaultRifle_FAMAS extends KFWeap_AssaultRifle_FAMAS;


defaultproperties
{
	bCanRefillSecondaryAmmo = true;

	// Content
	PackageKey="Famas"
	FirstPersonMeshName="wep_1p_famas_mesh.Wep_1stP_Famas_Rig"
	FirstPersonAnimSetNames(0)="wep_1p_famas_anim.Wep_1stP_Famas_Anim"
	PickupMeshName="WEP_3P_Famas_MESH.WEP_Famas_Pickup"
	AttachmentArchetypeName="Wep_Famas_ARCH.Wep_Famas_3P"
	MuzzleFlashTemplateName="wep_famas_arch.Wep_Famas_MuzzleFlash"
	ShotgunMuzzleFlashTemplate=KFMuzzleFlash'wep_famas_arch.Wep_Famas_Shotgun_MuzzleFlash'

	// Scope Render
	// 2D scene capture
	Begin Object Name=SceneCapture2DComponent0
		TextureTarget=TextureRenderTarget2D'Wep_Mat_Lib.WEP_ScopeLense_Target'
		FieldOfView=12.5 // "2.0X" = 25.0(our real world FOV determinant)/2.0
	End Object

	ScopedSensitivityMod = 8.0
	ScopeLenseMICTemplate = MaterialInstanceConstant'WEP_1P_FNFAL_MAT.WEP_1P_FNFAL_Scope_MAT'
	ScopeMICIndex = 2

    // FOV
    MeshFov=65
	MeshIronSightFOV=60 //45
    PlayerIronSightFOV=70

	// Depth of field
	DOF_BlendInSpeed=3.0
	DOF_FG_FocalRadius=0
	DOF_FG_MaxNearBlurSize=3.5

	// Zooming/Position
	PlayerViewOffset=(X=22.0,Y=9.f,Z=-2.f)
	IronSightPosition=(X=0,Y=0,Z=0)

	// Ammo
	MagazineCapacity[0]=30 //24
	SpareAmmoCapacity[0]=240
	InitialSpareMags[0]=3
	bCanBeReloaded=true
	bReloadFromMagazine=true

	// Shotgun Ammo
	MagazineCapacity[1]=6
	SpareAmmoCapacity[1]=36 //42
	InitialSpareMags[1]=1

	// Recoil
	maxRecoilPitch=100 //125 //200 //120
	minRecoilPitch=75 //100 //150 //70
	maxRecoilYaw=40 //80
	minRecoilYaw=-40 //-80
	RecoilRate=0.085
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=900
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=75
	RecoilISMinYawLimit=65460
	RecoilISMaxPitchLimit=375
	RecoilISMinPitchLimit=65460
	RecoilViewRotationScale=0.25
	IronSightMeshFOVCompensationScale=1.7
    HippedRecoilModifier=2.0 //1.5

	// Inventory / Grouping
	InventorySize=6
	GroupPriority=80 //75
	WeaponSelectTexture=Texture2D'WEP_UI_Famas_TEX.UI_WeaponSelect_Famas'

	// DEFAULT_FIREMODE
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletAuto'
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_AssaultRifle'
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_FAMAS_Rifle'
	PenetrationPower(DEFAULT_FIREMODE)=1.0
	FireInterval(DEFAULT_FIREMODE)=+0.056 // 900 RPM // 0.0667
	InstantHitDamage(DEFAULT_FIREMODE)=35.0
	Spread(DEFAULT_FIREMODE)=0.005 //0.0085
	
	FireOffset=(X=30,Y=4.5,Z=-5)
	SecondaryFireOffset=(X=20.f,Y=4.5,Z=-7.f)

	// ALT_FIREMODE
	FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_ShotgunSingle'
	FiringStatesArray(ALTFIRE_FIREMODE)=FiringSecondaryState
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_Projectile
	WeaponProjectiles(ALTFIRE_FIREMODE)=class'KFProj_Bullet_Pellet'
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'KFDT_Ballistic_FAMAS_Shotgun'
	InstantHitDamage(ALTFIRE_FIREMODE)=40.0 //25.0 //30
	PenetrationPower(ALTFIRE_FIREMODE)=2.0
   	FireInterval(ALTFIRE_FIREMODE)=+0.55 //78 RPM //+1.2 //50 RPM /0.77
	NumPellets(ALTFIRE_FIREMODE)=7 //6
	Spread(ALTFIRE_FIREMODE)=0.08 //0.10 //0.12
    SecondaryAmmoTexture=Texture2D'ui_firemodes_tex.UI_FireModeSelect_ShotgunSingle'

	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_FAMAS'
	InstantHitDamage(BASH_FIREMODE)=26

	// Fire Effects
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_AR15.Play_WEP_SA_AR15_Fire_3P', FirstPersonCue=AkEvent'WW_WEP_SA_AR15.Play_WEP_SA_AR15_Fire_1P')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_AR15.Play_WEP_SA_AR15_Handling_DryFire'
	
    WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_AA12.Play_WEP_SA_AA12_Fire_3P', FirstPersonCue=AkEvent'WW_WEP_SA_AA12.Play_WEP_SA_AA12_Fire_1P')
    WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_SA_AA12.Play_WEP_SA_AA12_Handling_DryFire'

	// Attachments
	bHasIronSights=true
	bHasFlashlight=false

	AssociatedPerkClasses(0)=class'KFPerk_Commando'
   	AssociatedPerkClasses(1)=class'KFPerk_Support'
	
	//WeaponUpgrades[1]=(Stats=((Stat=EWUS_Damage0, Scale=1.125f), (Stat=EWUS_Damage1, Scale=1.125f), (Stat=EWUS_Weight, Add=1)))
	//WeaponUpgrades[2]=(Stats=((Stat=EWUS_Damage0, Scale=1.25f), (Stat=EWUS_Damage1, Scale=1.25f), (Stat=EWUS_Weight, Add=2)))

	bUsesSecondaryAmmoAltHUD=true
	AltFireRecoilScale = 4.5 //4.0 //2.5
}