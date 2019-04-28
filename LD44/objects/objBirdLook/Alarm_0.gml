/// @description Insert description here
// You can write your code in this editor

if (image_index > 0 && objBoat.x < x) {
  image_index -=1;
} else if (image_index < 2 && objBoat.x > x) {
  image_index += 1;
}


alarm[0] = updateSpeed;
