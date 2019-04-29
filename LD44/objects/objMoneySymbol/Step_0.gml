/// @description Insert description here
// You can write your code in this editor


image_index = showCounter/showTime*image_number;

y = y - showDistance/showTime;

showCounter++;

if(showCounter >= showTime)
	instance_destroy();