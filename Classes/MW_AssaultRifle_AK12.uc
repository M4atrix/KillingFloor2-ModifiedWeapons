class MW_AssaultRifle_AK12 extends KFWeap_AssaultRifle_AK12;

var private bool bIsAltFire;

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return class<KFWeapon>(itemclass).default.PackageKey == self.PackageKey;
}

function SetOriginalValuesFromPickup(KFWeapon PickedUpWeapon)
{
	super.SetOriginalValuesFromPickup(PickedUpWeapon);
	ClientSetAltFire(MW_AssaultRifle_AK12(PickedUpWeapon).bIsAltFire);
}

simulated function AltFireMode()
{
	super.AltFireMode();
	ServerSetAltFire(bUseAltFireMode);
}

reliable server function ServerSetAltFire(bool bAltFire)
{
	bIsAltFire = bAltFire;
}

reliable client function ClientSetAltFire(bool bAltFire)
{
	bUseAltFireMode = bAltFire;
}

DefaultProperties
{
	// Ammo
	InitialSpareMags[0]=0
	
	// Recoil
	maxRecoilPitch=200
	minRecoilPitch=200 //150
	
	// Inventory / Grouping
	InventorySize=6
	
	// Damage
	InstantHitDamage(DEFAULT_FIREMODE)=46.0 //40
	InstantHitDamage(ALTFIRE_FIREMODE)=46.0 //40
	
	WeaponUpgrades.Empty
}
