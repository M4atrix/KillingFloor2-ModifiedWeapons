class MW_Rifle_M14EBR extends KFWeap_Rifle_M14EBR;

var bool bIsLaserSightEnabled, bIsFromPickup;

//simulated event SetWeapon()
//{
//	if(!class'CustomWeaponsMutator'.static.RemovedDuplicateWeapon(Inventory,self))
//	{
//		super.SetWeapon();
//	}
//}

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return class<KFWeapon>(ItemClass).default.PackageKey == self.PackageKey;
}

simulated function AttachLaserSight()
{
	local bool bEnabled;
	
	super.AttachLaserSight();
	
	// Setup our laser sight on the client
	if (bIsFromPickup)
	{
		bEnabled = bIsLaserSightEnabled;
	}
	else
	{
		bEnabled = true;
	}
	SetLaserSightEnabled(bEnabled);
}

simulated function SetLaserSightEnabled(bool bEnabled, optional bool SendToServer = true)
{
	bIsLaserSightEnabled = bEnabled;
	
	if (WorldInfo.NetMode != NM_DedicatedServer)
	{
		if (LaserSight != None)
		{
			// We don't use LaserSight.ChangeVisibility() because
			// that hides the laser sight mesh itself
			LaserSight.LaserBeamMeshComp.SetHidden(!bIsLaserSightEnabled);
			LaserSight.LaserDotMeshComp.SetHidden(!bIsLaserSightEnabled);
			if (Role < ROLE_Authority && SendToServer)
			{
				ServerSetLaserSight(bIsLaserSightEnabled);
			}
		}
		else
		{
			bIsFromPickup = true;
		}
	}
}

simulated function AltFireMode()
{
	if (!Instigator.IsLocallyControlled())
	{
		return;
	}
	
	SetLaserSightEnabled(!bIsLaserSightEnabled);
	
	// Play switch fire mode sound for audio confirmation
	Instigator.PlaySoundBase(KFInventoryManager(InvManager).SwitchFireModeEvent);
}

simulated event Tick(float DeltaTime)
{
	local float InterpValue;
	local float DefaultZoomInTime;
	
	// Copy/paste modified from KFWeapon
	if (LaserSight != None && bIsLaserSightEnabled)
	{
		LaserSight.Update(DeltaTime, Self);
		
	}
	
	// Copy/paste modified from KFWeap_ScopedBase
	if(ScopeLenseMIC == none)
	{
		return;
	}
	
	if(Instigator != none && Instigator.Controller != none && Instigator.IsHumanControlled())
	{
		if(bZoomingOut)
		{
			InterpValue = ZoomTime/default.ZoomOutTime;
			ScopeLenseMIC.SetScalarParameterValue(InterpParamName, InterpValue);
		}
		else if(bZoomingIn)
		{
			DefaultZoomInTime = default.ZoomInTime;
			InterpValue = -ZoomTime/DefaultZoomInTime + 1;
			ScopeLenseMIC.SetScalarParameterValue(InterpParamName, InterpValue);
		}
	}
}

reliable server function ServerSetLaserSight(bool bEnabled)
{
	bIsLaserSightEnabled = bEnabled;
}

/** Transfers laser sight setting to client when picking up dropped weapon */
reliable client function ClientSetLaserSight(bool bEnabled)
{
	if (Role < ROLE_Authority)
	SetLaserSightEnabled(bEnabled, false);
}

/** Transfer laser sight setting to client */
function SetOriginalValuesFromPickup(KFWeapon PickedUpWeapon)
{
	super.SetOriginalValuesFromPickup(PickedUpWeapon);
	SetLaserSightEnabled(MW_Rifle_M14EBR(PickedUpWeapon).bIsLaserSightEnabled);
	ClientSetLaserSight(bIsLaserSightEnabled);
}

DefaultProperties
{
	bIsLaserSightEnabled=true

	ScopeLenseMICTemplate=MaterialInstanceConstant'CustomScope.WEP_1P_M14EBR_Scope_MAT'
	PlayerViewOffset=(X=15.0,Y=11.5,Z=-4)
	IronSightPosition=(X=6.0,Y=-0.025,Z=-0.03)
	
	EquipTime=0.20
	PutDownTime=0.20
	
	// Ammo
	InitialSpareMags[0]=0
	bCanBeReloaded=true
	bReloadFromMagazine=true
	
	// Recoil
	maxRecoilPitch=220
	minRecoilPitch=220 // 200
	
	// DEFAULT_FIREMODE
	InstantHitDamage(DEFAULT_FIREMODE)=80.0 //80 //90
	
	//WeaponUpgrades.Empty
	WeaponUpgrades[1]=(Stats=((Stat=EWUS_Damage0, Scale=1.15f), (Stat=EWUS_Weight, Add=1)))
}
