/// @description Insert description here
// You can write your code in this editor

if(shouldDrawClawInset) {
	var viewNum = 1;


	var left = view_get_xport(viewNum);
	var top = view_get_yport(viewNum);
	var right = left + view_get_wport(viewNum)
	var bottom = top + view_get_hport(viewNum);


	borderColor = c_white;
	draw_line_width_color(left, top, right, top, 3, borderColor, borderColor);
	draw_line_width_color(right, top, right, bottom, 3, borderColor, borderColor);
	draw_line_width_color(right, bottom, left, bottom, 3, borderColor, borderColor);
	draw_line_width_color(left, bottom, left, top, 3, borderColor, borderColor);
  
  draw_sprite(sprClawCamLabel, 0, left + 10, top + 10);
  var font = draw_get_font();
  draw_set_font(fontClawCam);
  var depthVal = camera_get_view_y(view_camera[viewNum]) - 160;
  draw_text_color(left + 160, top + 74, scrAppendZeros(depthVal, 4) + "m", c_white, c_white, c_white, c_white, 1);  
  draw_set_font(font);
  
}