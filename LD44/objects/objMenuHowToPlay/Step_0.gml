/// @description Check on whether to display variables
// You can write your code in this editor

if (instance_number(objMenu) > 0) {
  if (scrPressedLeft() || scrPressedRight()) {
    selected = true;
  }

  if (scrPressedDown()) {
    chosen = true;
  }
   

  if (selected && chosen && banked) {
    instance_destroy(); 
  }
}