/// scrSpawnTreasure()


var success = false;
var treasureType = choose(objTestMoney);


while (!success) {
  
  var xr = irandom_range(10, objDock.x - DOCK_SAFE_DISTANCE);
  
  var theTreasure = instance_create_layer(xr, 677, "MidgroundInstances", treasureType);
  
  with (theTreasure) {
    if (!place_meeting(x, y, objMoney)) {
      success = true;
    } else {
      instance_destroy(); 
    }
  }
  
}