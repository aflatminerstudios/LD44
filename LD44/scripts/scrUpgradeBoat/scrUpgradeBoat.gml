/// @description scrUpgradeBoat()

var level = objGameControl.boatLevel;
var boat = objBoat;

switch(level) {
  case 1:
    boat.maxSpeed = 5.15;
    break;
  case 2:
    boat.accel = 0.15
    break;
  case 3:
    boat.maxSpeed = 5.3;
    break;
  case 4:
    boat.accel = 0.2;
    break;
  case 5:
    boat.armor = 30;
    break;
  case 6:
    boat.armor = 40;
    break;
  case 7:
    boat.maxSpeed = 5.8;
    break;
  default:
    if (level % 2 == 0) {
      boat.accel *= 1.1; 
    } else {
      boat.maxSpeed *= 1.05;
    }
}

objGameControl.boatLevel += 1;