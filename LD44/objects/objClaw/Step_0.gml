/// @description Movement each step

// TODO: temporary: keep pace with parent

if (parent != noone) {

  //x = parent.x;
  //x += parent.curSpeed;
  
  if (parentDist == 0) {
    //Can't collide if directly attached
    x += parent.curSpeed;         
  } else {
    //Make sure not colliding with something in list
    if (!scrIsCollisionList(x + parent.curSpeed, y, objMoney)) {        
      //Keep up with parent
      x += parent.curSpeed;//prevSpeed[15];         
    }

    if (x != parent.x) {
      //If not directly under parent, adjust a bit each time until directly under
      var dist = parent.x - x;
      //var per = dist / parentDist;    
      if (!scrIsCollisionList(x + 2 * sign(dist) , y, objMoney)) {
        x += 2 * sign(dist); 
      }
    }
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
    }


    var top = parent.y + parent.sprite_height / 2;
    //Check if at top
    if (y <= top) {
      y = top;
      parentDist = 0;
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