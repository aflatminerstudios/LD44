/// @description Insert description here
// You can write your code in this editor

menuItems[0] = instance_create_depth(x + 181, y + 188, depth - 1, objMenuItem);
menuItems[1] = instance_create_depth(x + 505, y + 188, depth - 1, objMenuItem)

menuItems[0].itemDesc = "Finish Game";
menuItems[0].price = -1;
menuItems[0].parent = self.id;
menuItems[0].itemNum = 0;

menuItems[1].itemDesc = "Keep Playing";
menuItems[1].price = -1;
menuItems[1].parent = self.id;
menuItems[1].itemNum = 1;

selectedItem = 0;
maxItem = 1;


boat = instance_create_depth(menuItems[0].x, 150, depth - 1, objUpgradeBoat);
claw = instance_create_depth(menuItems[0].x, 150 + boat.sprite_height/2, depth - 1, objUpgradeClaw);

boat.parent = self.id;
claw.parent = self.id;

done = false;
leaving = false;
canLeave = true;