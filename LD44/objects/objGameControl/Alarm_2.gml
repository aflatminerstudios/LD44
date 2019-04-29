/// @description Spawn annoyances
// You can write your code in this editor

var whichToSpawn = choose(objShark);
var toSpawn = true;

if (whichToSpawn = objShark) {
  if (instance_number(objShark) >= maxSharks) {
    toSpawn = false; 
  }
}

if (toSpawn) {
  
  var r = random(1);
  var xC = -500
  if (r < 0.5) {
    xC = room_width + 500;
  }
  
  var yC = irandom_range(300, 700);

  instance_create_layer(xC, yC, "MidgroundInstances", whichToSpawn);  
  //show_debug_message("Spawning shark " + string(xC));
}


alarm[1] = irandom_range(annoySpawnMin, annoySpawnMax);


