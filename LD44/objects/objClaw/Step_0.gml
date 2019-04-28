/// @description Movement each step

// TODO: temporary: keep pace with parent
if (parent != noone) {

  //x = parent.x;
  //x += parent.curSpeed;
 /* if (carrying)
    compValue = 1;
  else
    compValue = 0;
   */ 
  if (parentDist == 0) {
    //Can't collide if directly attached
    x += parent.curSpeed;         
  } else {
    //Make sure not colliding with something in list    
    if (!scrIsCollisionListForClaw(x + parent.curSpeed, y, objMoney)) {        
      //Keep up with parent
      x += parent.curSpeed;//prevSpeed[15];         
    }

    if (x != parent.x) {
      //If not directly under parent, adjust a bit each time until directly under
      var dist = parent.x - x;
      //var per = dist / parentDist;    
      if (!scrIsCollisionListForClaw(x + 2 * sign(dist) , y, objMoney)) {
        x += 2 * sign(dist); 
      }
    }
    
    //This fixes stuttering, but makes it so you run through treasures
    /*if (abs(x - parent.x) < 5) {
      x = parent.x; 
    }*/
  }
  
  //Adjust distance to parent
  if (!parent.docked) {
    if (scrHeldDown()) {
       parentDist += dropSpeed;
    }
    if (scrHeldUp()) {
      var change = raiseMult * dropSpeed;
      if (carrying) {
        change *= carryMult;  
      }
      parentDist -= change;
    }

    //calculate y from x coordinate and distance from parent
    var calc = (x - parent.x) / parentDist;
    if (parentDist <= 0) {
      parentDist = 0;
      y = parent.y + parent.sprite_height / 2;      
    } else if (calc <= -1 || calc >= 1) {
      y = parent.y + parent.sprite_height / 2;
      x = parent.x + (parentDist * sign(calc));
    } else {      
      //show_debug_message("Getting arccos of " + string(calc));
      var theta = arccos(calc);      
      y = parent.y + parentDist * sin(theta);
    }
    
    //Make sure it doesn't go beyond top or bottom
    var bottom = room_height - sprite_height/2;

    if (y >= bottom) {
      y = bottom;
      parentDist = point_distance(x, y, parent.x, parent.y);
    }

    //Check for whether to pick up treasure
    if (!carrying) {
      var treasure = instance_position(x, y, objMoney);
      if (treasure != noone) {
        treasure.parent = self.id;
        carriedObject = treasure;
        carrying = true;
        with (treasure.sparkles) {
          instance_destroy(); 
        }
      }
    }


    var top = parent.y + parent.sprite_height / 2;
    //Check if at top
    if (y <= top) {
      y = top;      
      if (carrying) {
        objGameControl.money += carriedObject.value;
        with (carriedObject) {
          instance_destroy(); 
        }
        carriedObject = noone;
        carrying = false;
      }    
    }
  }
}