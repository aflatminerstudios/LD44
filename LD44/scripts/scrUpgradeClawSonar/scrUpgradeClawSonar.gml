/// @description scrUpgradeClawSonar


var level = objGameControl.clawLightLevel;
var sonar = objSonarLight;

if (level == 2) {
  sonar.isEnabled = true;  
}

objGameControl.clawLightLevel++;