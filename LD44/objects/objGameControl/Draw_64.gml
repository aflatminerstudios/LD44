/// @description Draw indicators on screen
// You can write your code in this editor

//draw_text(500, 100, "$" + string(money) + " : $" + string(bankedMoney));
//draw_text(500, 50, string(objTimer.count) + "/" + string(objTimer.maxCount));


draw_sprite(sprSalvageText, 0, 75, 50);
draw_sprite(sprBankText, 0, 75, 100);
var font = draw_get_font();
//var color = draw_get_color();
var valign = draw_get_valign();
var halign = draw_get_halign();
draw_set_valign(fa_middle);
draw_set_halign(fa_left);


draw_set_font(fontSalvageMoneyText);
draw_text(150, 50, "$" + string(money));
draw_text(150, 100, "$" + string(bankedMoney));
draw_set_font(font);
draw_set_valign(valign);
draw_set_halign(halign);