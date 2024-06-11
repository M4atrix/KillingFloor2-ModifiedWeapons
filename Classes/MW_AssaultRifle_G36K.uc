//=============================================================================
// KFWeap_AssaultRifle_G36K
//=============================================================================
// Class Description
//=============================================================================
// Killing Floor 2
// Copyright (C) 2022 Tripwire Interactive LLC
//=============================================================================

class MW_AssaultRifle_G36K extends KFWeap_AssaultRifle_G36C;

defaultproperties
{
	bHasFireLastAnims=true
	BonesToLockOnEmpty=(RW_Bolt, RW_Charging_Handle)

	// Shooting Animations
	FireSightedAnims[0]=Shoot_Iron
	FireSightedAnims[1]=Shoot_Iron2
	FireSightedAnims[2]=Shoot_Iron3

    // FOV
	MeshFOV=70
	MeshIronSightFOV=50
    PlayerIronSightFOV=70

	// Zooming/Position
	IronSightPosition=(X=-6.0,Y=-9.0975,Z=2.4325) // (X=-4.48,Y=-9.3,Z=2.5)
	PlayerViewOffset=(X=3,Y=0,Z=0)

	// Content
	PackageKey="G36C"
	FirstPersonMeshName="WEP_1P_G36_V2_MESH.Wep_1stP_G36K_Rig"
	FirstPersonAnimSetNames(0)="WEP_1P_G36_V2_ANIM.Wep_1stP_G36K_Anim"
	PickupMeshName="WEP_3P_G36_V2_MESH.Wep_G36K_Pickup"
	AttachmentArchetypeName="WEP_G36_V2_ARCH.Wep_G36K_3P"
	
	// Recoil
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
	
	// Recoil from M16M203
	// maxRecoilPitch=120
	// minRecoilPitch=70
	// maxRecoilYaw=130
	// minRecoilYaw=-130
	// RecoilRate=0.08
	// RecoilMaxYawLimit=500
	// RecoilMinYawLimit=65035
	// RecoilMaxPitchLimit=900
	// RecoilMinPitchLimit=65035
	// RecoilISMaxYawLimit=75
	// RecoilISMinYawLimit=65460
	// RecoilISMaxPitchLimit=375
	// RecoilISMinPitchLimit=65460
	// RecoilViewRotationScale=0.25
	// IronSightMeshFOVCompensationScale=1.7
    // HippedRecoilModifier=1.5
	
	// Inventory
	InventorySize=7
	GroupPriority=100
	WeaponSelectTexture=Texture2D'WEP_UI_G36_V2_TEX.UI_WeaponSelect_G36K'

	// DEFAULT_FIREMODE
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletAuto'
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_G36K'
	PenetrationPower(DEFAULT_FIREMODE)=0.0
	FireInterval(DEFAULT_FIREMODE)=+0.08 // 750 RPM
	Spread(DEFAULT_FIREMODE)=0.005
	InstantHitDamage(DEFAULT_FIREMODE)=50.0 // 45.0
	FireOffset=(X=30,Y=4.5,Z=-5)

	// ALT_FIREMODE
	FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'KFDT_Ballistic_G36K'
	PenetrationPower(ALTFIRE_FIREMODE)=0.0
	FireInterval(ALTFIRE_FIREMODE)=+0.08 // 750 RPM
	InstantHitDamage(ALTFIRE_FIREMODE)=50.0 // 45.0 
	Spread(ALTFIRE_FIREMODE)=0.005

	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_G36K'
	InstantHitDamage(BASH_FIREMODE)=26
	
	bHasLaserSight=false

	AssociatedPerkClasses(0)=class'KFPerk_Commando'

	WeaponUpgrades.Empty
}
