/// @description Insert description here
// You can write your code in this editor

if (!objBoat.safe) {
	// Add winch info
	instance_create_layer(3150, 84, layer, objOperateWinch);
	// Add an arrrow to point back to the Dock
	instance_create_layer(3860, y, layer, objArrowKeyRight);
	instance_destroy();
}