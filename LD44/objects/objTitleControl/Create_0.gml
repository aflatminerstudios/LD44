/// @description Insert description here
// You can write your code in this editor

// The target location we are moving to
viewTarget = "title"; // "title", "credits"
oldViewTarget = viewTarget;
isScrolling = false;
durationOfScroll = 1.5*room_speed;
scrollTime = 0;

titlePositionX = 0;
creditsPositionX = room_width;

scrSetTitleScrollPosition(titlePositionX/room_width);

//Make sure game over controller is destroyed
with (objGameOverController) {
  instance_destroy(); 
}