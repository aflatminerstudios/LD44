/// @description Insert description here
// You can write your code in this editor

// The target location we are moving to
viewTarget = "title"; // "title", "credits"
oldViewTarget = viewTarget;
isScrolling = false;
durationOfScroll = 2.0*room_speed;
scrollTime = 0;

scrSetTitleScrollPosition(1.0); // Set to 100% far right (title logo)