/// @description scrUpgradeTime()

var level = objGameControl.timeLevel;
var timer = instance_find(objTimer, 0);
var tentacles = instance_find(objTentacles, 0);

switch (level) {
  case 1:
    tentacles.creepSpeed *= 0.9;
    break;
  case 2:
    tentacles.damage -= 5;
    break;
  case 3:
    timer.baseTimer += 20
    break;
  case 4:
    tentacles.retreatMult *= 1.25;
    break;
  case 5:
    timer.baseTimer += 20;
    break;
  case 6:
    tentacles.curCreepDist *= 0.75;
    break;    
  case 8:
    tentacles.retreatSpeed *= 1.25;
    break;
  case 9:
    tentacles.curRetreatDist *= 1.25;
    break;
  case 10:
    tentacles.damage -= 10;
    break;
}
/*
if (level < 9) {
  switch (level % 3) {
    case 0:
      timer.baseTimer += 20;
      break;
    case 1:
      timer.rangeMin += 20;
      break;
    case 2:
      timer.rangeMax += 20;
      break;
  }
} else {
  baseTimer += 5;
  timer.rangeMin -= 5;
  timer.rangeMax += 5;
}*/

objGameControl.timeLevel += 1;