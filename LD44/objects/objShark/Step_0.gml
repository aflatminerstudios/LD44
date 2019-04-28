/// @description Insert description here
// You can write your code in this editor

var oldX = x;
var oldY = y;
var dist = point_distance(x, y, targetX, targetY);
move_towards_point(targetX, targetY, moveSpeed);
//show_debug_message(string(dist) + " vs. " + string(moveSpeed));
if (dist > moveSpeed * 2) {
  image_angle = point_direction(x, y, targetX, targetY);

  if (image_angle > 90 && image_angle < 270) {
    image_yscale = -1;
  } else {
    image_yscale = 1;
  }
}
var claw = instance_find(objClaw, 0);

if (!attacking) {
  //show_debug_message(string(abs(x - targetX)) + " : " + string(abs(y - targetY)) + " : " + string(moveSpeed));
  if (dist < moveSpeed * 3) {
    alarm[0] = 1; 
  }

  if (x <= -900 || x >= room_width + 900) {
    show_debug_message("Shark dead");
    instance_destroy(); 
  }

  if (attackCountdown >= attackCooldown && distance_to_object(claw) < attackDistance) {    
      if (claw.parentDist > claw.minDistance) {
        attacking = true;
        alarm[2] = 1;
        alarm[0] = -5;
      }
  }

  attackCountdown++;
  //show_debug_message(attackCountdown);
} else {
  if (place_meeting(x, y, claw)) {
    show_debug_message("Shark Collided with Claw");
    x = oldX;
    y = oldY;
    attacking = false;
    attackCountdown = 0;
    alarm[2] = -5;   
    alarm[0] = 1;        
    
    if (claw.carrying) {
      show_debug_message("Dropping item");
      with (claw) {
        carrying = false;
        dropCount = 0;
        carriedObject.parent = noone;
        carriedObject.y += 5;
        carriedObject = noone;
        image_index = 0;
      }
    }
    
  }
}