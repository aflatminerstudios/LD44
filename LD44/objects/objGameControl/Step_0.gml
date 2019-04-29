/// @description Check for ending key presses
// You can write your code in this editor

if (finished) {
  if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)) {
    scrEndGame(true); 
  }
}