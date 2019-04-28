/// @description Insert description here
// You can write your code in this editor

if (parent != noone) {
  if (dropping) {
    if (place_meeting(x, y + dropSpeed, objMenuItem)) {       
      raising = true;
      dropping = false;
    } else {
      y += dropSpeed;  
    }

  } else if (raising) {    
    if ((y - dropSpeed) <= (parent.boat.y + parent.boat.sprite_height/2)) {
      y = parent.boat.y + parent.boat.sprite_height/2;
      raising = false;
    } else {
      y -= dropSpeed; 
    }
  }
}