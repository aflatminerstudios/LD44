/// scrSpawnTreasure()


var success = false;
var treasureType = choose(objTire, objTire, objTire, objMotor, objMotor, objGoatIdol, objCthulhu);
var r = random(1);

if (r < 0.40) {
  treasureType = objTire; 
} else if (r < 0.7) {
  treasureType = objMotor;
} else if (r < 0.9) {
  treasureType = objGoatIdol;
} else {
  treasureType = objCthulhu;
}


while (!success) {
  
  var xr = irandom_range(10, objDock.x - DOCK_SAFE_DISTANCE);
  
  var theTreasure = instance_create_layer(xr, 225, "MidgroundInstances", treasureType);
  
  with (theTreasure) {
    if (!place_meeting(x, y, objMoney)) {
      success = true;
    } else {
      instance_destroy(); 
    }
  }
  
}