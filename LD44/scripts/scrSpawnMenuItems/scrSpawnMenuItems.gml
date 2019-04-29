/// @description scrSpawnMenuItems(menu)
/// @param The menu to spawn the items on

var menu = argument0;

with (menu) {
  //spawn them
  menuItems[0] = instance_create_depth(x + 100, y + 238, depth - 1, objMenuItem);
  menuItems[1] = instance_create_depth(x + 262, y + 238, depth - 1, objMenuItem);
  menuItems[2] = instance_create_depth(x + 424, y + 238, depth - 1, objMenuItem);
  menuItems[3] = instance_create_depth(x + 586, y + 238, depth - 1, objMenuItem);
  
  //populate them
  
  menuItems[0].itemDesc = "Time";
  menuItems[0].price = 50 * objGameControl.timeLevel;
  menuItems[0].parent = menu;
  menuItems[0].itemNum = 0;
  
  
  if (objGameControl.clawLightLevel == 1 && objGameControl.clawLevel == 1) {
    menuItems[1].itemDesc = "Claw Light";
    menuItems[1].price = 50 * objGameControl.clawLightLevel;
    menuItems[1].parent = menu;
    menuItems[1].itemNum = 1;
  } else {
    menuItems[1].itemDesc = "Claw";
    menuItems[1].price = 50 * objGameControl.clawLevel;
    menuItems[1].parent = menu;
    menuItems[1].itemNum = 1;
  }
  
  if (objGameControl.clawLightLevel == 2 && objGameControl.clawLevel >= 2 && objGameControl.boatLevel >= 3) {
    menuItems[2].itemDesc = "Claw Sonar";
    menuItems[2].price = 150;
    menuItems[2].parent = menu;
    menuItems[2].itemNum = 2;
  } else {
    menuItems[2].itemDesc = "Boat";
    menuItems[2].price = 50 * objGameControl.boatLevel;
    menuItems[2].parent = menu;
    menuItems[2].itemNum = 2;
  }
  
  menuItems[3].itemDesc = "Bank";
  menuItems[3].price = -1;
  menuItems[3].parent = menu;
  menuItems[3].itemNum = 3;
}