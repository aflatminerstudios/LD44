/// @description Movement
var dist = objDock.x - x;
/*
var len = array_length_1d(prevSpeed);

for (var i = 0; i < min(20, len) - 1; i++) {
  prevSpeed[i] = prevSpeed[i + 1];
}

if (len < 20) {
  prevSpeed[len] = curSpeed;
} else {
  prevSpeed[19] = curSpeed; 
}
*/
if (!docked) {
  //Movement can happen if not docked
  if (scrHeldLeft()) {
    curSpeed -= accel;
    image_xscale = -1; 
  }
  if (scrHeldRight()) {
    curSpeed += accel; 
    image_xscale = 1; 
  }  

  curSpeed = clamp(curSpeed, maxSpeed * -1, maxSpeed);
  x += curSpeed;
  
  
  //Check if entering/leaving dock/safety
  if (safe) {
    
    if (dist < DOCK_MENU_DISTANCE) {
      scrEnterDock(); 
    } else if (dist > DOCK_SAFE_DISTANCE) {
      scrLeaveSafety(); 
    }
  } else {
    if (dist < DOCK_SAFE_DISTANCE) {
      scrEnterSafety(); 
    }
  }
} else {
  //If in dock
   if (dist > DOCK_MENU_DISTANCE) {
    scrLeaveDock();
   }
   
  //TODO: Take out these two:
  if (keyboard_check_pressed(vk_space)) {
    scrLeaveDock();
    x = objDock.x - DOCK_MENU_DISTANCE - 1;
    curSpeed = -1;
  }
  if (keyboard_check_pressed(vk_enter)) {
    scrBankMoney();
  }
   
} 
