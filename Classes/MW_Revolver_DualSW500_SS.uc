class MW_Revolver_DualSW500_SS extends KFWeap_DualBase;

const ReloadSpeedMultiplier = 0.9f;
var private float ReloadspeedMod;

simulated function float GetReloadRateScale()
{
	return Super.GetReloadRateScale() * ReloadSpeedMultiplier;
}

simulated event SetWeapon()
{
	super.SetWeapon();
	
	if(GetPerk().class == class'KFPerk_Sharpshooter')
	{
		EquipTime = 0.25; // 0.45
		PutDownTime = 0.25; // 0.33
		MinFiringPutDownPct = 0.60; // 0.80
		ReloadspeedMod = 0.80;
	}
}

defaultproperties
{
	ReloadspeedMod=1.0; 
	// Content
	PackageKey="Dual_SW_500"
	FirstPersonMeshName="WEP_1P_Dual_SW_500_MESH.Wep_1stP_Dual_SW_500_Rig"
	FirstPersonAnimSetNames(0)="WEP_1P_Dual_SW_500_ANIM.Wep_1stP_Dual_SW_500_Anim"
	PickupMeshName="WEP_3P_Dual_SW_500_MESH.Wep_SW_500_Pickup"
	AttachmentArchetypeName="WEP_Dual_SW_500_ARCH.Wep_Dual_SW_500_3P"
	MuzzleFlashTemplateName="WEP_Dual_SW_500_ARCH.Wep_Dual_SW_500_MuzzleFlash"

	Begin Object Name=FirstPersonMesh
		// new anim tree with skelcontrol to rotate cylinders
		AnimTreeTemplate=AnimTree'CHR_1P_Arms_ARCH.WEP_1stP_Dual_Animtree_Master_Revolver'
	End Object

	FireOffset=(X=17,Y=4.0,Z=-2.25)
	LeftFireOffset=(X=17,Y=-4,Z=-2.25)

	// Zooming/Position
	IronSightPosition=(X=7,Y=0,Z=0)
	PlayerViewOffset=(X=29,Y=0,Z=-4)
	QuickWeaponDownRotation=(Pitch=-8192,Yaw=0,Roll=0)

	bCanThrow=true
	bDropOnDeath=true

	SingleClass=class'MW_Revolver_SW500_SS'

	// FOV
	MeshFOV=60
	MeshIronSightFOV=60
    PlayerIronSightFOV=77

	// Depth of field
	DOF_FG_FocalRadius=40
	DOF_FG_MaxNearBlurSize=3.5

	// Ammo
	MagazineCapacity[0]=12 // twice as much as single
	SpareAmmoCapacity[0]=95
	InitialSpareMags[0]=2
	AmmoPickupScale[0]=1.0
	bCanBeReloaded=true
	bReloadFromMagazine=true

	// Recoil
	maxRecoilPitch=850
	minRecoilPitch=750
	maxRecoilYaw=150
	minRecoilYaw=-150
	RecoilRate=0.1
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=900
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=50
	RecoilISMinYawLimit=65485
	RecoilISMaxPitchLimit=500
	RecoilISMinPitchLimit=65485
	IronSightMeshFOVCompensationScale=1.4

	// DEFAULT_FIREMODE
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_RevolverSW500'
	FireInterval(DEFAULT_FIREMODE)=+0.19 // 0.14 about twice as fast as single
	InstantHitDamage(DEFAULT_FIREMODE)=160.0 //150
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'Custom_KFDT_Ballistic_SW500'
	PenetrationPower(DEFAULT_FIREMODE)=3.0
	Spread(DEFAULT_FIREMODE)=0.015

	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'

	// ALTFIRE_FIREMODE
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(ALTFIRE_FIREMODE)=class'KFProj_Bullet_RevolverSW500'
	FireInterval(ALTFIRE_FIREMODE)=+0.19 // 0.14 about twice as fast as single
	InstantHitDamage(ALTFIRE_FIREMODE)=160.0 //150
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'Custom_KFDT_Ballistic_SW500'
	PenetrationPower(ALTFIRE_FIREMODE)=3.0
	Spread(ALTFIRE_FIREMODE)=0.015

	FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'

	// BASH_FIREMODE
	InstantHitDamage(BASH_FIREMODE)=26
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_SW500'

	// Fire Effects
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_SW500.Play_WEP_SA_SW500_Fire_3P', FirstPersonCue=AkEvent'WW_WEP_SA_SW500.Play_WEP_SA_SW500_Fire_1P')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_SW500.Play_WEP_SA_SW500_Handling_DryFire'

	WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_SW500.Play_WEP_SA_SW500_Fire_3P', FirstPersonCue=AkEvent'WW_WEP_SA_SW500.Play_WEP_SA_SW500_Fire_1P')
	WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_SA_SW500.Play_WEP_SA_SW500_Handling_DryFire'

	// Attachments
	bHasIronSights=true
	bHasFlashlight=true

	// Inventory
	InventorySize=6
	GroupPriority=50
	WeaponSelectTexture=Texture2D'WEP_UI_Dual_SW_500_TEX.UI_WeaponSelect_DualSW500'
	bIsBackupWeapon=false
	AssociatedPerkClasses(0)=class'KFPerk_Sharpshooter'
	

    bHasFireLastAnims=true
    BonesToLockOnEmpty=(RW_Hammer)
    BonesToLockOnEmpty_L=(LW_Hammer)

    // Revolver
	bRevolver=true
	CylinderRotInfo=(Inc=-72.0, Time=0.0875/*about 0.35 in the anim divided by ratescale of 4*/)
    CylinderRotInfo_L=(Inc=-72.0, Time=0.0875/*about 0.35 in the anim divided by ratescale of 4*/)

    // Revolver shell/cap replacement
	UnusedBulletMeshTemplate=SkeletalMesh'WEP_1P_SW_500_MESH.Wep_1stP_SW_500_Bullet'
	UsedBulletMeshTemplate=SkeletalMesh'WEP_1P_SW_500_MESH.Wep_1stP_SW_500_EmptyShell'
	BulletFXSocketNames=(RW_Bullet_FX_5, LW_Bullet_FX_5, RW_Bullet_FX_4, LW_Bullet_FX_4, RW_Bullet_FX_3, LW_Bullet_FX_3, RW_Bullet_FX_2, LW_Bullet_FX_2, RW_Bullet_FX_1, LW_Bullet_FX_1)

	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp0
		SkeletalMesh=SkeletalMesh'WEP_1P_SW_500_MESH.Wep_1stP_SW_500_Bullet'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp0)
	BulletMeshComponents.Add(BulletMeshComp0)

	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp0_L
		SkeletalMesh=SkeletalMesh'WEP_1P_SW_500_MESH.Wep_1stP_SW_500_Bullet'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp0_L)
	BulletMeshComponents.Add(BulletMeshComp0_L)

	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp1
		SkeletalMesh=SkeletalMesh'WEP_1P_SW_500_MESH.Wep_1stP_SW_500_Bullet'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp1)
	BulletMeshComponents.Add(BulletMeshComp1)

	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp1_L
		SkeletalMesh=SkeletalMesh'WEP_1P_SW_500_MESH.Wep_1stP_SW_500_Bullet'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp1_L)
	BulletMeshComponents.Add(BulletMeshComp1_L)

	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp2
		SkeletalMesh=SkeletalMesh'WEP_1P_SW_500_MESH.Wep_1stP_SW_500_Bullet'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp2)
	BulletMeshComponents.Add(BulletMeshComp2)

	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp2_L
		SkeletalMesh=SkeletalMesh'WEP_1P_SW_500_MESH.Wep_1stP_SW_500_Bullet'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp2_L)
	BulletMeshComponents.Add(BulletMeshComp2_L)

	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp3
		SkeletalMesh=SkeletalMesh'WEP_1P_SW_500_MESH.Wep_1stP_SW_500_Bullet'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp3)
	BulletMeshComponents.Add(BulletMeshComp3)

	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp3_L
		SkeletalMesh=SkeletalMesh'WEP_1P_SW_500_MESH.Wep_1stP_SW_500_Bullet'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp3_L)
	BulletMeshComponents.Add(BulletMeshComp3_L)

	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp4
		SkeletalMesh=SkeletalMesh'WEP_1P_SW_500_MESH.Wep_1stP_SW_500_Bullet'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp4)
	BulletMeshComponents.Add(BulletMeshComp4)

	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp4_L
		SkeletalMesh=SkeletalMesh'WEP_1P_SW_500_MESH.Wep_1stP_SW_500_Bullet'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp4_L)
	BulletMeshComponents.Add(BulletMeshComp4_L)

    // Weapon Upgrade stat boosts
	//WeaponUpgrades[1]=(IncrementDamage=1.15f,IncrementWeight=2)

	//WeaponUpgrades[1]=(Stats=((Stat=EWUS_Damage0, Scale=1.15f), (Stat=EWUS_Damage1, Scale=1.15f), (Stat=EWUS_Weight, Add=2)))
}
