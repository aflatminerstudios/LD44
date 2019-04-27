/// @description Movement each step

// TODO: temporary: keep pace with parent

if (parent != noone) {

  //x = parent.x;
  //x += parent.curSpeed;
  if (!scrIsCollisionList(x + parent.curSpeed, y, objMoney)) {        
      x += parent.curSpeed;         
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
      show_debug_message("Getting arccos of " + string(calc));
      var theta = arccos(calc);
      y = parent.y + parentDist * sin(theta);
    }
    
    var bottom = room_height - sprite_height/2;

    if (y >= bottom) {
      y = bottom;
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