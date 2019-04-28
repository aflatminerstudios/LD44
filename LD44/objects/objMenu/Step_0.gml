/// @description Insert description here
// You can write your code in this editor

//4 means leave with doing nothing

if (scrPressedRight()) {
  selectedItem = (selectedItem + 1) % (maxItem + 1);
} else if (scrPressedLeft()) {
  selectedItem = (selectedItem - 1);
  if (selectedItem == -1) {
    selectedItem = maxItem; 
  }
}

if (keyboard_check_pressed(vk_space)) {
  
  switch(selectedItem) {
    case 0:
      scrBankMoney();
      scrLeaveDock();
      break;
    case 1:
      scrMakePurchase(menuItems[1]);
      maxItem = 3;
      menuItems[1].valid = false;
      break;
    case 2:
      scrMakePurchase(menuItems[2]);
      maxItem = 3;
      menuItems[2].valid = false;
      break;
    case 3:
      scrMakePurchase(menuItems[3]);
      maxItem = 3;
      menuItems[3].valid = false;
      break;
    case 4:
      scrLeaveDock();
      break;
  }
}
