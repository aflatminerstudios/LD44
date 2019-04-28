/// @description scrUpgradeClaw()

var level = objGameControl.clawLightLevel;
var clawLight = objClawLight;

if (level == 1) {
  clawLight.sprite_index = sprClawLightLevel2; 
}

objGameControl.clawLightLevel++;