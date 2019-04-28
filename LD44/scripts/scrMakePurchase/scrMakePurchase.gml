/// @description scrMakePurchase(menuItem)
/// @param The menu item object controlling your purchase

var menuItem = argument0;

if (!menuItem.valid)
  return;
  
switch(menuItem.itemDesc) {
  case "Claw":
    scrUpgradeClaw();
    break;
  case "Boat":
    scrUpgradeBoat();
    break;
  case "Time":
    scrUpgradeTime();
    break;
  default:
    show_debug_message("Invalid purchase attempt");
}