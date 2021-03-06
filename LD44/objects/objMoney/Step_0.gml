/// @description Insert description here
// You can write your code in this editor

if (parent != noone) {
  x = parent.x;
  y = parent.y;
} else {
  
  var newY = y + dropSpeed;
  
  if (!place_meeting(x, newY, objTerrainAlpha)) {
    y = newY;
  } else {    
    if (!landed) {
      
      while (!place_meeting(x, y + 1, objTerrainAlpha)) {
        y += 1; 
      }

      landed = true;
      //Recalculate value based on depth
       if (y > 900) {
          value *= 1.75;
          if (y > 1450) {
          value *= 2; 
          }
      }
      
      //Recalculate value based on distance from shore
      var distanceFromShore = room_width - x - 300;
      if (distanceFromShore > 0) {
        value += (floor(distanceFromShore / 250)) * 15;
      }
      value = round(value);
    }
 
  }
}
