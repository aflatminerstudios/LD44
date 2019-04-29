/// @description Insert description here
// You can write your code in this editor

var boat = instance_find(objBoat, 0);

var nearDist = 1024;
var fadeLength = 1024;
var farDist = nearDist + fadeLength;

if (boat != noone) {

  
  if (boat.x > room_width - nearDist  && audio_sound_get_gain(music) != 1) {
    show_debug_message("Inside 1");
    audio_sound_gain(sndMusic, 1, 0);
    audio_sound_gain(sndMusicFar, 0, 0);
  } else if (boat.x < room_width - farDist && audio_sound_get_gain(sndMusicFar) != 1) {  
    show_debug_message("Inside 2");
    audio_sound_gain(sndMusicFar, 1, 0);
    audio_sound_gain(sndMusic, 0, 0);
  } else if (boat.x < room_width - nearDist && boat.x > room_width - farDist){
    
    if (!audio_is_playing(musicFar)) {
      //audio_play_sound(musicFar, 100, true);
    } 
    var perNear = abs(((room_width - farDist) - boat.x) / fadeLength);
    var perFar = 1 - perNear;    
    audio_sound_gain(sndMusic, perNear, 3);
    audio_sound_gain(sndMusicFar, perFar, 3);
  }
}

//show_debug_message("Music: " + string(audio_is_playing(music)) + " , " + string(audio_sound_get_gain(music)));
//show_debug_message("MusicFar: " + string(audio_is_playing(musicFar)) + " , " + string(audio_sound_get_gain(musicFar)));