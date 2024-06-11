class MW_Pistol_DualDeagle extends KFWeap_Pistol_DualDeagle;


function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return class<KFWeapon>(ItemClass).default.PackageKey == self.PackageKey;
}

DefaultProperties
{
	SingleClass=class'ModifiedWeapons.MW_Pistol_Deagle'
	
	// Ammo
	InitialSpareMags[0]=0
	
	// Recoil
	maxRecoilPitch=650 // 650
	minRecoilPitch=650 // 550
	
	// DEFAULT_FIREMODE
	FireInterval(DEFAULT_FIREMODE)=+0.11 // .11
	FireInterval(ALTFIRE_FIREMODE)=+0.11 // .11
	
	WeaponUpgrades.Empty
}
