/// @description scrUpgradeClaw()

var level = objGameControl.clawLevel;
var claw = objClaw;

if (level == 1 || level == 3 || level == 5 || level == 7)  {
  claw.dropSpeed *= 1.20;
} else if (level == 2 || level == 6) {
  claw.carryMult += 0.10;
} else if (level == 3 || level == 8) {
  claw.raiseMult += 0.10; 
} else if (level == 10) {
  claw.raiseMult += 0.05; 
} else if (level == 12) {
  claw.carryMult += 0.05;
} else {
  claw.dropSpeed *= 1.10; 
}

objGameControl.clawLevel += 1;