//=============================================================================
// KFWeap_AssaultRifle_G36C
//=============================================================================
// KFWeap_AssaultRifle_G36C_V2
//=============================================================================
// Class Description
//=============================================================================
// Killing Floor 2
// Copyright (C) 2022 Tripwire Interactive LLC
//=============================================================================

class MW_AssaultRifle_G36C_V2 extends KFWeap_AssaultRifle_G36C;

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
	IronSightPosition=(X=-6.0,Y=-9.0975,Z=1.7825) // (X=-4.48,Y=-9.3,Z=2.5)
	PlayerViewOffset=(X=3,Y=0,Z=0)
	
	IronSightMeshFOVCompensationScale=1.9

	// Content
	PackageKey="G36C"
	FirstPersonMeshName="WEP_1P_G36_V2_MESH.Wep_1stP_G36C_V2_Rig"
	FirstPersonAnimSetNames(0)="WEP_1P_G36_V2_ANIM.Wep_1stP_G36C_V2_Anim"
	PickupMeshName="WEP_3P_G36_V2_MESH.Wep_G36C_V2_Pickup"
	AttachmentArchetypeName="WEP_G36_V2_ARCH.Wep_G36C_V2_3P"
	
	// Inventory
	WeaponSelectTexture=Texture2D'WEP_UI_G36_V2_TEX.UI_WeaponSelect_G36C_V2'
	
	bHasLaserSight=false
}
