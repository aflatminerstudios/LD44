/// @description Insert description here
// You can write your code in this editor

draw_self();

if (parent != noone) {
  
  var color = draw_get_color();
  var align = draw_get_halign();
  draw_set_halign(fa_center);
  var blendColor = c_white;
  if (parent.selectedItem == itemNum) {  
    blendColor = c_red;
    draw_set_color(c_red);
    image_blend = c_red;
  } else {
    draw_set_color(c_black); 
    image_blend = c_white;
  }
  
  if (!valid) {
    image_blend &= c_gray;
    blendColor &= c_gray;    
  }
  
  if (itemSprite != noone) {
    draw_sprite(itemSprite, 0, x, y);
    draw_sprite_ext(itemSprite,0,x,y,1,1,1,blendColor,1);
  } else {
    draw_text(x, y, itemDesc); 
  }
  
  if (price > 0) {
    draw_text(x, y + 50, "$" + string(price));
  }

  draw_set_halign(align);
  draw_set_color(color);
}