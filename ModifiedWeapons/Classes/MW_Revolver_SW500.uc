class MW_Revolver_SW500 extends KFWeap_Revolver_SW500;

var private float ReloadspeedMod;

simulated function float GetReloadRateScale()
{
	return Super.GetReloadRateScale() * ReloadspeedMod;
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

DefaultProperties
{
	ReloadspeedMod=1.0;
	
	// Ammo
	InitialSpareMags[0]=0
	
	// Recoil
	maxRecoilPitch=850
	minRecoilPitch=850 //750
	
	DualClass=class'ModifiedWeapons.MW_Revolver_DualSW500'
	WeaponUpgrades.Empty
}
