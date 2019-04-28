/// @description Insert description here
// You can write your code in this editor

draw_self();

lineTopX = parent.boat.x - 44 * parent.boat.image_xscale;
lineTopY = parent.boat.y - 14 * parent.boat.image_yscale;

draw_line_width_color(x, y, lineTopX, lineTopY, 2.5, c_white, c_white);
