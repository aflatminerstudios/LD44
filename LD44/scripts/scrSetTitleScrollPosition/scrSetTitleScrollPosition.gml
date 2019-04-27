/// scrSetTitleScrollPosition(percentFromLeft)

var percentFromLeft = argument0; // viewTarget

var camera = view_get_camera(0);
//var cameraX = camera_get_view_x(camera);
var cameraY = camera_get_view_y(camera);

var cameraFarLeftX = 0;
var cameraFarRightX = room_width - camera_get_view_width(camera);
var newXPosition = lerp(cameraFarLeftX, cameraFarRightX, percentFromLeft);

camera_set_view_pos(camera, newXPosition, cameraY);

// Move the parallax foreground
with(objTitleParallaxForeground) {
	var extraForegroundWidth = sprite_width - room_width;
	var xx = lerp(0, -extraForegroundWidth, percentFromLeft)
	x = xx;
	// Post-jam To Do -- Support multiple layers, based on their size using the calculations above
}


with(objStaticBackground) {
	var extraForegroundWidth = sprite_width - room_width;
	var xx = lerp(0, -extraForegroundWidth, percentFromLeft)
	x = xx;
	// Post-jam To Do -- Support multiple layers, based on their size using the calculations above
}