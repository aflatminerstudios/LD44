/// @description scrLeaveDock()

objBoat.docked = false;

objBoat.x = objDock.x - DOCK_MENU_DISTANCE - 1;
objBoat.curSpeed = -1;

with (objMenu) {
  alarm[0] = 1;
}

with (objWinMenu) {
  alarm[0] = 1; 
}