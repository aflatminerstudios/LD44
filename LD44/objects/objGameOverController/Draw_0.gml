/// @description Insert description here
// You can write your code in this editor

var align = draw_get_halign();
var font = draw_get_font();

if (won) {
  draw_sprite(sprGameOverWin, 0, 0, 0);
} else {
  draw_sprite(sprGameOverLose, 0, 0, 0);
  draw_sprite(sprLoseSayings, whichPhrase, 512, 384);
}

draw_set_halign(fa_center);
draw_set_font(fontGameOver);
draw_text(512, 580, "$" + string(money));

draw_set_font(font);
draw_set_halign(align);
