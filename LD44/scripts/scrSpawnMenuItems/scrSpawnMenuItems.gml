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
  menuItems[0].itemDesc = "Bank";
  menuItems[0].price = -1;
  menuItems[0].parent = menu;
  menuItems[0].itemNum = 0;
  
  menuItems[1].itemDesc = "Claw";
  menuItems[1].price = 5 * objGameControl.clawLevel;
  menuItems[1].parent = menu;
  menuItems[1].itemNum = 1;
  
  menuItems[2].itemDesc = "Boat";
  menuItems[2].price = 5 * objGameControl.boatLevel;
  menuItems[2].parent = menu;
  menuItems[2].itemNum = 2;
  
  menuItems[3].itemDesc = "Time";
  menuItems[3].price = 5 * objGameControl.timeLevel;
  menuItems[3].parent = menu;
  menuItems[3].itemNum = 3;
}