/// @description Insert description here
// You can write your code in this editor

draw_self();

//if talking draw bubble
if (talking && bubble != noone) {
  draw_sprite(bubble, 0, x, y);
}