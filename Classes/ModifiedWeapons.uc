class ModifiedWeapons extends KFMutator;

var private SkinsAdder SkinsAdder;

function PostBeginPlay() {
      Super.PostBeginPlay();
      SkinsAdder = Spawn(class'SkinsAdder');
      
    
      }
defaultproperties
{
   
   Name="Default__NewWeapons"
   ObjectArchetype=KFMutator'KFGame.Default__KFMutator'
}
