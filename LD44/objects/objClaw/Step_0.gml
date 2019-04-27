/// @description Movement each step

// TODO: temporary: keep pace with parent
x = parent.x;

if (scrHeldDown()) {
   y += dropSpeed;
}
if (scrHeldUp()) {
  var change = raiseMult * dropSpeed;
  if (carrying) {
    change *= carryMult;  
  }
  y -= change;
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