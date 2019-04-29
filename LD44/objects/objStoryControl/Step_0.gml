/// @description Insert description here
// You can write your code in this editor

if (whichStep < 11) {
  if (keyboard_check_pressed(vk_anykey)) {  
    whichStep += 1;
    //Skip transitions if you hit a key
    if (whichStep == 8) {
      whichStep += 1; 
    }
    if (whichStep == 10) {
      whichStep += 2; 
    }
    
    //Set appropriate alarms    
    alarm[0] = -1;
    show_debug_message(whichStep);
    if (whichStep >= 12) {
      alarm[11] = room_speed/2; 
    } if (whichStep == 1) {
      alarm[0] = room_speed * 3;
    } if (whichStep == 9) {
      alarm[0] = room_speed * 3.5;
    } if (whichStep == 8 || whichStep == 10 || whichStep == 11) {
      alarm[0] = room_speed/2;
    } else {
      alarm[0] = room_speed*2;  
    }
    
  }
}

