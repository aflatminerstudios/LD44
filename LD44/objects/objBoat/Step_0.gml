/// @description Movement
var dist = objDock.x - x;

if (!docked) {
  if (scrHeldLeft()) {
    curSpeed -= accel;
  }
  if (scrHeldRight()) {
    curSpeed += accel; 
  }

  curSpeed = clamp(curSpeed, maxSpeed * -1, maxSpeed);

  x += curSpeed;
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