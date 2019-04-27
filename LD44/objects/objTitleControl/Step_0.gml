/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("I"))) {
  //room_goto(roomInstructions); // TODO: Remove or change to instructions screen
} else if (keyboard_check_pressed(vk_left)) {
  scrShowCredits(); 
} else if (keyboard_check_pressed(vk_right)) {
  scrHideCredits(); 
} else if (keyboard_check_pressed(vk_anykey)) {
  scrGoToMainScreen();
}

if(self.viewTarget != self.oldViewTarget) {
	self.oldViewTarget = self.viewTarget;
	self.isScrolling = true;
	self.scrollTime = self.durationOfScroll;
}

if(self.isScrolling) {
	// Move the camera
	if(self.viewTarget == "credits") {
		var percentFromLeft = afm_scrCurveCubicInOut(0, 1, self.scrollTime/self.durationOfScroll);
		scrSetTitleScrollPosition(percentFromLeft);
	} else if(self.viewTarget == "title") {
		var percentFromLeft = afm_scrCurveCubicInOut(1, 0, self.scrollTime/self.durationOfScroll);
		scrSetTitleScrollPosition(percentFromLeft);
	}

	// Adjust the parallax


	// Update the scroll time
	if(self.scrollTime <= 0)
		self.isScrolling = false;
	else
		self.scrollTime--;

}


