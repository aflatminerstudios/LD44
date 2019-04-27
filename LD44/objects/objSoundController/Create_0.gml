/// @description Start playing music

music = sndMusic;

if (!audio_is_playing(music)) {
  audio_play_sound(music, 100, true);
}