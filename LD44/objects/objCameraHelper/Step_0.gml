/// @description Insert description here
// You can write your code in this editor

shouldDrawClawInset = false;
var claw = instance_find(objClaw, 0);
if (claw.parentDist > 300) {
	shouldDrawClawInset = true;
} else {
	shouldDrawClawInset = false;
}
var boat = instance_find(objBoat, 0);
if (boat.docked) {
  shouldDrawClawInset = false; 
}

var viewNum = 1;
if(shouldDrawClawInset) {
	view_set_visible(viewNum, true);
	
	//var viewX = display_get_width()/2 - view_wport[viewNum]/2;
	//var viewY = display_get_height() - view_hport[viewNum] - 20;
	//view_set_xport(viewNum, viewX);
	//view_set_yport(viewNum, viewY);
} else {
	view_set_visible(viewNum, false);
}