/// @description Insert description here
// You can write your code in this editor



if(parentInstance != noone) {
	x = parentInstance.x;
	y = parentInstance.y;
	
	var surfaceY = 200;
	var fullLightY = 300;
	if(y < surfaceY) {
		image_alpha = 0;	
	} else if(y < fullLightY) {
		image_alpha = (y - surfaceY)/(fullLightY - surfaceY); // Scale as it goes deeper
		
	} else {
		image_alpha = 1.0;	
	}
}