/// @description Make loudest music play at full volume
// You can write your code in this editor

var nearGain = audio_sound_get_gain(sndMusic);
var farGain = audio_sound_get_gain(sndMusicFar);

if (nearGain > farGain) {
  audio_sound_gain(sndMusic, 1, 0); 
} else {
  audio_sound_gain(sndMusicFar, 1, 0); 
}