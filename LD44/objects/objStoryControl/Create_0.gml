/// @description Insert description here
// You can write your code in this editor
scrInitializeGame();
whichStep = 0;

music = sndStoryBG;

if (!audio_is_playing(music)) {
  audio_play_sound(music, 100, true);
}

alarm[0] = room_speed;