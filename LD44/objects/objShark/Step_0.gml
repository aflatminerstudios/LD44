/// @description Insert description here
// You can write your code in this editor

var oldX = x;
var oldY = y;
var dist = point_distance(x, y, targetX, targetY);
var claw = instance_find(objClaw, 0);

move_towards_point(targetX, targetY, moveSpeed);

//Fixes bug where image_angle bugs out when too close to target
if (dist > moveSpeed * 2) {
  image_angle = point_direction(x, y, targetX, targetY);

  if (image_angle > 90 && image_angle < 270) {
    image_yscale = -1;
  } else {
    image_yscale = 1;
  }
}


if (!attacking) {
  //show_debug_message(string(abs(x - targetX)) + " : " + string(abs(y - targetY)) + " : " + string(moveSpeed));
 // show_debug_message("Before if statement: ")
  //show_debug_message(string(dist) + " vs. " + string(moveSpeed) + " : " + string(alarm[0]));
  //Find new target if close to old target
  if (dist < moveSpeed * 2 && alarm[0] < 0) {
   // show_debug_message("In : " + string(alarm[0]));
    alarm[0] = 1; 
  }

  //Kill if outside room
  if (x <= -900 || x >= room_width + 900) {
    //show_debug_message("Shark dead");
    instance_destroy(); 
  }

  //If cooldown is over and close to extended claw, attack
  //Sets alarm0 to -5 so that it won't trigger
  if (attackCountdown >= attackCooldown && distance_to_object(claw) < attackDistance) {    
      if (claw.parentDist > claw.minDistance) {
       // show_debug_message("Starting Attack : " + string(alarm[2]));
        attacking = true;
        alarm[2] = 1;
        alarm[0] = -5;
      }
  }
  //show_debug_message(attackCountdown);
} else {
  if (place_meeting(x, y, claw)) {
  //show_debug_message("Collision");
    x = oldX;
    y = oldY;
    attacking = false;
    attackCountdown = 0;
    alarm[2] = -5;   
    alarm[0] = 1;        
    
    if (claw.carrying) {
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

attackCountdown++;