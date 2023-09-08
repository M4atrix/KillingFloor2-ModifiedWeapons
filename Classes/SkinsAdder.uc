class SkinsAdder extends ReplicationInfo dependson(ModifiedWeapons);

struct SkinReplacement
{
	var class<KFWeaponDefinition> CustomWeapDef;
	var class<KFWeapon> DefaultWeapon;
}
;

var private array<SkinReplacement> ReplacementArray;

simulated event PostBeginPlay()
{
	super.PostBeginPlay();
	
	if(WorldInfo.NetMode != NM_DedicatedServer) // Server doesn't need skins
	{
		ReplaceSkins();
	}
}

private reliable client function ReplaceSkins()
{
	local SkinReplacement SR;
	
	foreach ReplacementArray(SR)
	{
		class'KFGame.KFWeaponSkinList'.static.SaveWeaponSkin(SR.CustomWeapDef,SR.DefaultWeapon.default.SkinItemId);
	}
	
	ReplacementArray.length = 0;
	self.Destroy();
}

DefaultProperties
{
	RemoteRole=ROLE_SimulatedProxy
	bAlwaysRelevant=true
	
	//ReplacementArray.Add((CustomWeapDef=class'ModifiedWeapons.KFWeapDef_M14EBR_IS',DefaultWeapon=class'KFGameContent.KFWeap_Rifle_M14EBR'))
	//ReplacementArray.Add((CustomWeapDef=class'ModifiedWeapons.KFWeapDef_M14EBR',DefaultWeapon=class'KFGameContent.KFWeap_Rifle_M14EBR'))
	ReplacementArray.Add((CustomWeapDef=class'ModifiedWeapons.KFWeapDef_AF2011',DefaultWeapon=class'KFGameContent.KFWeap_Pistol_AF2011'))
	ReplacementArray.Add((CustomWeapDef=class'ModifiedWeapons.KFWeapDef_AF2011Dual',DefaultWeapon=class'KFGameContent.KFWeap_Pistol_DualAF2011'))
	ReplacementArray.Add((CustomWeapDef=class'ModifiedWeapons.KFWeapDef_CenterfireMB464',DefaultWeapon=class'KFGameContent.KFWeap_Rifle_CenterfireMB464'))
	//ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_Hemogoblin_NoBleed',DefaultWeapon=class'KFGameContent.KFWeap_Rifle_Hemogoblin'))
	//ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_HRGCrossbow',DefaultWeapon=class'KFGameContent.KFWeap_Bow_Crossbow'))
	//ReplacementArray.Add((CustomWeapDef=class'ModifiedWeapons.KFWeapDef_MedicSMG2',DefaultWeapon=class'KFGameContent.KFWeap_SMG_Medic'))
	//ReplacementArray.Add((CustomWeapDef=class'ModifiedWeapons.KFWeapDef_MedicSMG',DefaultWeapon=class'KFGameContent.KFWeap_SMG_Medic'))
	ReplacementArray.Add((CustomWeapDef=class'ModifiedWeapons.KFWeapDef_SW500',DefaultWeapon=class'KFGameContent.KFWeap_Revolver_SW500'))
	ReplacementArray.Add((CustomWeapDef=class'ModifiedWeapons.KFWeapDef_SW500Dual',DefaultWeapon=class'KFGameContent.KFWeap_Revolver_DualSW500'))
	
}
