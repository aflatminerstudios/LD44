/// @description Insert description here
// You can write your code in this editor

menuItems[0] = noone;

scrSpawnMenuItems(self.id);

selectedItem = 0;
maxItem = 3;


boat = instance_create_depth(menuItems[0].x, 150, depth - 1, objUpgradeBoat);
claw = instance_create_depth(menuItems[0].x, 150 + boat.sprite_height/2, depth - 1, objUpgradeClaw);

boat.parent = self.id;
claw.parent = self.id;

done = false;
leaving = false;
canLeave = true;