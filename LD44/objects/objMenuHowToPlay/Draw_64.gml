/// @description Draw helper things
// You can write your code in this editor

if (instance_number(objMenu) > 0) {
  if (!selected) {
    draw_sprite(sprSelectedDesc, 0, 250, 200);
  }

  if (!chosen) {
    draw_sprite(sprChoseDesc, 0, 350, 200);
  }

  if (!banked) {
    draw_sprite(sprBankDesc, 0, 750, 200);
  }

  if (!chosen && !banked) {
    draw_sprite(sprExitDesc, 0, 50, 200);
  }
}