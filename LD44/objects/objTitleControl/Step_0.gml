/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("I"))) {
  //room_goto(roomInstructions); // TODO: Remove or change to instructions screen
} else if (keyboard_check_pressed(vk_right) && !self.isScrolling) {
  scrShowCredits(); 
} else if (keyboard_check_pressed(vk_left) && !self.isScrolling) {
  scrHideCredits(); 
} else if (keyboard_check_pressed(vk_anykey)) {
  //scrGoToMainScreen();
}

if(self.viewTarget != self.oldViewTarget) {
	self.oldViewTarget = self.viewTarget;
	self.isScrolling = true;
	self.scrollTime = self.durationOfScroll;
}

if(self.isScrolling) {
	// Move the camera
	if(self.viewTarget == "credits") {
		var initialPositionPercent = titlePositionX/room_width;
		var finalPositionPercent = creditsPositionX/room_width;
		var percentFromLeft = afm_scrCurveCubicInOut(finalPositionPercent, initialPositionPercent, self.scrollTime/self.durationOfScroll);
		scrSetTitleScrollPosition(percentFromLeft);
	} else if(self.viewTarget == "title") {
		var initialPositionPercent = creditsPositionX/room_width;
		var finalPositionPercent = titlePositionX/room_width;
		var percentFromLeft = afm_scrCurveCubicInOut(finalPositionPercent, initialPositionPercent, self.scrollTime/self.durationOfScroll);
		scrSetTitleScrollPosition(percentFromLeft);
	}

	// Adjust the parallax


	// Update the scroll time
	if(self.scrollTime <= 0)
		self.isScrolling = false;
	else
		self.scrollTime--;

}


