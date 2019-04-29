/// @description Insert description here
// You can write your code in this editor

if (parent != noone) {
  x = parent.x;
  y = parent.y;
} else {
  //TODO: Change this to deal with terrain instead of bottom of the screen
  var newY = y + dropSpeed;
  
  if (!place_meeting(x, newY, objTerrainAlpha)) {
    y = newY;
  } else {    
    while (!place_meeting(x, y + 1, objTerrainAlpha)) {
      y += 1; 
    }
  }
}
