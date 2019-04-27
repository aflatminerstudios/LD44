/// @description scrIsCollisionList(x, y, args*) Checks for collision with any argument
/// @param x The x coordinate to check
/// @param y The y coordinate to check
/// @param *args list of objects to check for collision with

var xc = argument[0];
var yc = argument[1];

for (var i = 2; i < argument_count; i++) {  
  if (place_meeting(xc, yc, argument[i])) {
    return true; 
  }
}

return false;