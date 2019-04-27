/// @description scrIsCollisionList(x, y, args*) Checks for collision with any argument
/// @param x The x coordinate to check
/// @param y The y coordinate to check
/// @param *args list of objects to check for collision with

var xc = argument[0];
var yc = argument[1];

for (var i = 2; i < argument_count; i++) {  
 
  if (argument[i].object_index != objMoney) {
    if (place_meeting(xc, yc, argument[i])) {
      return true; 
    }
  } else {
 
    var num = instance_number(argument[i]);

    for (var j = 0; j < num; j++) {
      var theMoney = instance_find(argument[i], j);
      if (place_meeting(xc, yc, theMoney)) {
        if (theMoney != carriedObject)
          return true;
      }
    }
  }
}

return false;