/// @description scrUpgradeBoat()

var level = objGameControl.boatLevel;
var boat = objBoat;

switch(level) {
  case 1:
    boat.maxSpeed = 5.5;
    break;
  case 2:
    boat.accel = 0.2
    break;
  case 3:
    boat.armor = 40;
    break;    
  case 4:
    boat.maxSpeed = 6;
    break;
  case 5:
    boat.accel = 0.25;
    break;
  case 6:
    boat.armor = 80;
    break;
  case 7:
    boat.maxSpeed = 6.5;
    break;
  default:
    if (level % 2 == 0) {
      boat.accel *= 1.1; 
    } else {
      boat.maxSpeed *= 1.05;
    }
}

objGameControl.boatLevel += 1;