/// @description Insert description here
// You can write your code in this editor

if (retreating) {
  x -= retreatSpeed; 
  distanceRetreated += retreatSpeed;
  if (distanceRetreated >= retreatDist) {
    distanceRetreated = 0;
    retreatDist = 0;
    retreating = false;
  }
} else if (creeping && !objBoat.safe && !objBoat.docked) {
  //Don't creep forward when not safe
  x += creepSpeed;
  distanceCrept += creepSpeed;
  if (distanceCrept >= creepDist) {
    distanceCrept = 0;
    creepDist = 0;
    creeping = false;
  }
}

if (x >= 2328) {
  creepDist = 0;
  creeping = false;
}

if (place_meeting(x, y, objBoat)) {
  objBoat.armor -= damage; 
  objBoat.curSpeed = 6;
  objBoat.pushed = true;  
  //objBoat.x += 50;
}