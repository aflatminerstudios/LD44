/// @description Insert description here
// You can write your code in this editor

draw_self();

if (global.debug) {
  var color = draw_get_color();
  var alpha = draw_get_alpha();
  
  draw_set_color(c_yellow);
  draw_set_alpha(0.5);
  draw_circle(x, y, DOCK_SAFE_DISTANCE, false);
  draw_set_color(c_red);
  draw_circle(x, y, DOCK_MENU_DISTANCE, false);
  
  draw_set_color(color);
  draw_set_alpha(alpha);
}