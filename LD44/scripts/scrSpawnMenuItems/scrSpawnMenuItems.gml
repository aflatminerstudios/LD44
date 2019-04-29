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
  if (objGameControl.clawLightLevel == 1 && objGameControl.timeLevel == 1) {
    menuItems[0].itemDesc = "Claw Light";
    menuItems[0].price = 50 * objGameControl.clawLightLevel;
    menuItems[0].parent = menu;
    menuItems[0].itemNum = 0;
    menuItems[0].sprite_index = sprUpgradeLight;
  } else {
    menuItems[0].itemDesc = "Time";
    menuItems[0].price = 50 * objGameControl.timeLevel;
    menuItems[0].parent = menu;
    menuItems[0].itemNum = 0;
    menuItems[0].sprite_index = sprDowngrade;
  }
  
  
  menuItems[1].itemDesc = "Claw";
  menuItems[1].price = 50 * objGameControl.clawLevel;
  menuItems[1].parent = menu;
  menuItems[1].itemNum = 1;
  menuItems[1].sprite_index = sprUpgradeClaw;
  
  
  if (objGameControl.clawLightLevel == 2 && objGameControl.clawLevel >= 2 && objGameControl.boatLevel >= 3) {
    menuItems[2].itemDesc = "Claw Sonar";
    menuItems[2].price = 150;
    menuItems[2].parent = menu;
    menuItems[2].itemNum = 2;
    menuItems[2].sprite_index = sprUpgradeSonar;
  } else {
    menuItems[2].itemDesc = "Boat";
    menuItems[2].price = 50 * objGameControl.boatLevel;
    menuItems[2].parent = menu;
    menuItems[2].itemNum = 2;
    menuItems[2].sprite_index = sprUpgradeBoat;
  }
  
  menuItems[3].itemDesc = "Bank";
  menuItems[3].price = -1;
  menuItems[3].parent = menu;
  menuItems[3].itemNum = 3;
  menuItems[3].sprite_index = sprBank;
}