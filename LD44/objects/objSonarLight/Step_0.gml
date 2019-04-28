/// @description Insert description here
// You can write your code in this editor



if(isEnabled && parentInstance != noone && !isPinging) {
	x = parentInstance.x;
	y = parentInstance.y;
	
	if(countdownTimer < 0) {
		var fullLightY = 550;
		//show_debug_message("sonarY/fullLightY: " + string(y) + "/" + string(fullLightY));
		if(y > fullLightY) {
			//show_debug_message("Pinging sonar light now.");
			isPinging = true;
			image_alpha = 1.0;
			image_index = 0;
		}
	} else {
		countdownTimer--;
		//show_debug_message("countdownTimer: " + string(countdownTimer));	
	}
}