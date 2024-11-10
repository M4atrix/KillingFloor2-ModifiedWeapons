class MW_SMG_Asval extends KFWeap_SMGBase;

defaultproperties
{
	// Inventory
	InventorySize=5
	GroupPriority=80
	WeaponSelectTexture=Texture2D'Spas12xASVAL_UI.UI_WeaponSelect_ASVAL'

	// FOV
	MeshFOV=75
	MeshIronSightFOV=55
	PlayerIronSightFOV=75

	// Zooming/Position
	IronSightPosition=(X=8.0000000,Y=0.0000000,Z=4.4000000)
	PlayerViewOffset=(X=19,Y=10,Z=-0.5)

	//Content
	PackageKey="M14EBR"
    FirstPersonMeshName="WEP_ASVAL_MESH.WEP_1stP_ASVAL_Rig"
	FirstPersonAnimSetNames(0)="WEP_1P_M14EBR_ANIM.Wep_1stP_M14_EBR_Anim"
	PickupMeshName="WEP_ASVAL_MESH.WEP_ASVAL_Pickup"
    AttachmentArchetypeName="WEP_ASVAL_ARCH.Wep_ASVAL_3P"
    MuzzleFlashTemplateName="WEP_ASVAL_ARCH.Wep_ASVAL_MuzzleFlash"

	// Ammo
	MagazineCapacity[0]=50
	SpareAmmoCapacity[0]=350
	InitialSpareMags[0]=2
	bCanBeReloaded=true
	bReloadFromMagazine=true

	// Recoil
	maxRecoilPitch=50
	minRecoilPitch=50
	maxRecoilYaw=60
	minRecoilYaw=-60
	RecoilRate=0.0800000
	RecoilViewRotationScale=0.6000000
	RecoilMaxYawLimit=400
	RecoilMinYawLimit=65135
	RecoilMaxPitchLimit=800
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=150
	RecoilISMinYawLimit=65385
	RecoilISMaxPitchLimit=350
	RecoilISMinPitchLimit=65435
	IronSightMeshFOVCompensationScale=1.5

	// DEFAULT_FIREMODE
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletAuto'
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_AssaultRifle'
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'Custom_KFDT_Ballistic_P90'
	FireInterval(DEFAULT_FIREMODE)=+0.056
	Spread(DEFAULT_FIREMODE)=0.015
	InstantHitDamage(DEFAULT_FIREMODE)=36
	FireOffset=(X=30.0000000,Y=3.0000000,Z=-2.5000000)

	// ALT_FIREMODE
	FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(ALTFIRE_FIREMODE)=class'KFProj_Bullet_AssaultRifle'
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'Custom_KFDT_Ballistic_P90'
	FireInterval(ALTFIRE_FIREMODE)=+0.1
	InstantHitDamage(ALTFIRE_FIREMODE)=36
	Spread(ALTFIRE_FIREMODE)=0.015

	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_P90'
	InstantHitDamage(BASH_FIREMODE)=25

	// Fire Effects
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_G36C.Play_WEP_G36C_3P_Shoot_LP', FirstPersonCue=AkEvent'WW_WEP_G36C.Play_WEP_G36C_1P_Shoot_LP')
	WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_G36C.Play_WEP_G36C_3P_Shoot_Single', FirstPersonCue=AkEvent'WW_WEP_G36C.Play_WEP_G36C_1P_Shoot_Single')

	//@todo: add akevents when we have them
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_AK12.Play_WEP_SA_AK12_Handling_DryFire' //@TODO: Replace me
	WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_SA_AK12.Play_WEP_SA_AK12_Handling_DryFire'

	// Advanced (High RPM) Fire Effects
	bLoopingFireAnim(DEFAULT_FIREMODE)=true
	bLoopingFireSnd(DEFAULT_FIREMODE)=true
	WeaponFireLoopEndSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_G36C.Play_WEP_G36C_3P_End_LP', FirstPersonCue=AkEvent'WW_WEP_G36C.Play_WEP_G36C_1P_End_LP')
	SingleFireSoundIndex=ALTFIRE_FIREMODE

	// Attachments
	bHasIronSights=true
	bHasFlashlight=true

	AssociatedPerkClasses(0)=class'KFPerk_Swat'
	AssociatedPerkClasses(1)=class'KFPerk_Commando'

	// Weapon Upgrade stat boosts
	//WeaponUpgrades[1]=(IncrementDamage=1.14f,IncrementWeight=1)
	//WeaponUpgrades[2]=(IncrementDamage=1.28f,IncrementWeight=2)

	WeaponUpgrades[1]=(Stats=((Stat=EWUS_Damage0, Scale=1.14f), (Stat=EWUS_Damage1, Scale=1.14f), (Stat=EWUS_Weight, Add=1)))
	WeaponUpgrades[2]=(Stats=((Stat=EWUS_Damage0, Scale=1.28f), (Stat=EWUS_Damage1, Scale=1.28f), (Stat=EWUS_Weight, Add=2)))
}