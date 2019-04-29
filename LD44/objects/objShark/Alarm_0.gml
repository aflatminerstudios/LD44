/// @description Choose new target destination
// You can write your code in this editor


var r = random(1);

attacking = false;

if (r < chanceToLeave) {
  //show_debug_message("Shark Leaving");
  leaving = true;
  //Leave left if on left side, right if on right side
  if (x < room_width/2) {
    targetX = -1000;    
  } else {
    targetX = room_width + 1000;
  }
  
  targetY = irandom_range(200, 250);
} else {
  targetX = irandom_range(-250, room_width + 250);
  targetY = irandom_range(200, room_height - 300);
  
  while (place_meeting(targetX, targetY, objTerrain)) {
    targetX = irandom_range(-250, room_width + 250);
    targetY = irandom_range(200, room_height - 300);
  }
}


//show_debug_message("Targeting " + string(targetX) + ", " + string(targetY));

alarm[1] = room_speed + irandom_range(-room_speed/4, room_speed/4);
