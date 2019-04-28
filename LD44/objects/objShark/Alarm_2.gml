/// @description Target claw
// You can write your code in this editor

var claw = instance_find(objClaw, 0);
var dir = point_direction(x, y, claw.x, claw.y);
var dist = distance_to_object(claw) + 25;
var r = random(1);

//If random chance says so, stop attacking
if (r < chanceToStopAttacking) {
  //show_debug_message("No longer attacking");
  attackCountdown = 0;
  alarm[0] = 1;   
} else {
  //Otherwise target a spot just on the other side of claw
  targetX = x + lengthdir_x(dist, dir);
  targetY = y + lengthdir_y(dist, dir);
  //show_debug_message("Attacking " + string(targetX) + ", " + string(targetY));
  alarm[2] = updateAttackTime;
  alarm[0] = -5;
}

//show_debug_message("Claw at " + string(claw.x) + ", " + string(claw.y));
//show_debug_message("Claw distance: " + string(dist));