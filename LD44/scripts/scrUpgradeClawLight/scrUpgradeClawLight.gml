/// @description scrUpgradeClaw()

var level = objGameControl.clawLightLevel;
var clawLight = objClawLight;

if (level == 1) {
  clawLight.sprite_index = sprClawLightLevel2; 
  clawLight.image_xscale = 1;
  clawLight.image_yscale = 1;
}

objGameControl.clawLightLevel++;