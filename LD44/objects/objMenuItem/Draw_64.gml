/// @description Insert description here
// You can write your code in this editor

draw_self();

if (parent != noone) {
  

  if (parent.selectedItem == itemNum) {  
    if (!valid) {
      image_index = 3;   
    } else {
      image_index = 1;
    }    
  } else {
    if (!valid) {
      image_index = 2;    
    } else {
      image_index = 0;
    } 
  }
  
  var font = draw_get_font();
  var align = draw_get_halign();
  draw_set_halign(fa_center);
  draw_set_font(fontUpgradePrice);
  if (price >= 0) {
    draw_text(x, y + 50, "$" + string(price));
  } else if (sprite_index == sprBank) {
    draw_text(x, y - 70, "$" + string(objGameControl.bankedMoney));
    draw_text(x, y + 10, "$" + string(global.goalMoney - objGameControl.bankedMoney));
  }

  draw_set_halign(align);
  draw_set_font(font);
  
}