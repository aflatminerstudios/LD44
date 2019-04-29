/// @description Insert description here
// You can write your code in this editor

//4 means leave with doing nothing

if (!claw.raising && !claw.dropping) {
  if (scrPressedRight()) {
    selectedItem = (selectedItem + 1) % (maxItem + 1);
  } else if (scrPressedLeft()) {
    selectedItem = (selectedItem - 1);
    if (selectedItem == -1) {
      selectedItem = maxItem; 
    }
  }
  if (!leaving) {
    boat.x = menuItems[selectedItem].x;
    claw.x = menuItems[selectedItem].x;
  }
}

if (scrPressedDown() || keyboard_check_pressed(vk_space)) {
  claw.dropping = true;  
}

if (!done && claw.raising) {
  switch(selectedItem) {
    case 0:
      scrEndGame();      
      break;
    case 1:
      leaving = true;
      objGameControl.finished = true;
      break;
  }
  done = true;
}

if (!claw.raising) {
  done = false; 
}

if (leaving = true && !claw.raising) {
  scrLeaveDock();
}