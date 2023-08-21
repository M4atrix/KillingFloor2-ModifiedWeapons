class MW_Pistol_DualAF2011 extends KFWeap_Pistol_DualAF2011;

simulated event SetWeapon()
{
	super.SetWeapon();
	SetTimer(0.5f, false, nameof(CheckUneven));
}

simulated function CheckUneven()
{
	if((AmmoCount[0] & 1) != 0)
	{
		AmmoCount[0] = AmmoCount[0] - 1;
	}
	else if((AmmoCount[1] & 1) != 0)
	{
		AmmoCount[1] = AmmoCount[1] - 1;
	}
}

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return class<KFWeapon>(ItemClass).default.PackageKey == self.PackageKey;
}

function HandleWeaponShotTaken( byte FireMode )
{
	if( KFPlayer != None )
	{
		if (FireMode == ALTFIRE_FIREMODE || FireMode == DEFAULT_FIREMODE )
			KFPlayer.AddShotsFired(2);
		else
			KFPlayer.AddShotsFired(GetNumProjectilesToFire(FireMode));
	}
}

simulated function InstantFireClient()
{
	super(KFWeap_DualBase).InstantFireClient();
	super(KFWeap_DualBase).InstantFireClient();
}

DefaultProperties
{
	SingleClass=class'ModifiedWeapons.MW_Pistol_AF2011'
	
	// Inventory
	GroupPriority=50 //45
	
	BarrelOffset=(X=2.0,Y=0,Z=0) //(X=10.0,Y=0,Z=0) 10cm barrel offset? according to pictures more like 1.5cm
	
	// Content
	FirstPersonAnimSetNames(0)="WEP_1P_Dual_AF2001_ANIM_NoPutDownKick.Wep_1stP_Dual_AF2001_Anim" // "wep_1p_dual_af2001_anim.Wep_1stP_Dual_AF2001_Anim"
	
	// Ammo
	InitialSpareMags[0]=0
	
	// DEFAULT_FIREMODE
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit //EWFT_Projectile
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'CustomWeapons.Custom_KFDT_Ballistic_AF2011'
	
	// ALTFIRE_FIREMODE
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_InstantHit //EWFT_Projectile
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'CustomWeapons.Custom_KFDT_Ballistic_AF2011'
	
	// Recoil
	maxRecoilPitch=630 // vertical
	minRecoilPitch=630
	maxRecoilYaw=310 // horizontal
	minRecoilYaw=-310
	
	WeaponUpgrades.Empty
}
