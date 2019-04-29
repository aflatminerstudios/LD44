/// @description Go to next room
// You can write your code in this editor
if (audio_is_playing(music)) {
  audio_stop_sound(music);
}
room_goto(roomTitle);