/// @description Insert description here
// You can write your code in this editor

var align = draw_get_halign();


draw_set_halign(fa_center);

draw_text_color(512, 364, "You earned $" + string(money), c_red, c_red, c_black, c_black, 1);

draw_set_halign(align);
