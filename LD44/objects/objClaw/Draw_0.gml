/// @description Insert description here
// You can write your code in this editor

draw_self();


lineTopX = parent.x - 44 * parent.image_xscale;
lineTopY = parent.y - 14;

var ropeColor = c_white;
draw_line_width_color(x, y - sprite_height/2, lineTopX, lineTopY, 5, ropeColor, ropeColor);