/// @description Target claw
// You can write your code in this editor

var claw = instance_find(objClaw, 0);
var dir = point_direction(x, y, claw.x, claw.y);
var dist = distance_to_object(claw) + 25;
var r = random(1);

if (r < chanceToStopAttacking) {
  alarm[0] = 1; 
} else {
  targetX = x + lengthdir_x(dist, dir);
  targetY = y + lengthdir_y(dist, dir);
  show_debug_message("Attacking " + string(targetX) + ", " + string(targetY));
  alarm[2] = updateAttackTime;
}

//show_debug_message("Claw at " + string(claw.x) + ", " + string(claw.y));
//show_debug_message("Claw distance: " + string(dist));