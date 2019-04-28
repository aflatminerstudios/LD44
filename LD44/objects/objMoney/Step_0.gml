/// @description Insert description here
// You can write your code in this editor

if (parent != noone) {
  x = parent.x;
  y = parent.y;
} else {
  //TODO: Change this to deal with terrain instead of bottom of the screen
  if (y < room_height - sprite_height/2) {
    y += dropSpeed;
  } else {
    y = room_height - sprite_height/2; 
  }
}
