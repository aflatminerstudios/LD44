/// @description Insert description here
// You can write your code in this editor

var tentacles = instance_find(objTentacles, 0);
var distance = 4000 - tentacles.x;
var per = distance / maxDist;

if (per >= 1) {
  per = 1;
  image_index = 0;
}
image_speed = (1 - per);


