/// @description Insert description here
// You can write your code in this editor

/// Stop pressed state and run unpressedScript

if(isPressed) {
  isPressed = false;
  
  if(unpressedSound != noone) {
    if(useSoundVariance)
      afm_scrPlaySoundWithRandomVarianceInRange(unpressedSound, minSoundVariance, maxSoundVariance);
    else
      afm_scrPlaySoundWithVariance(unpressedSound, 1.0);
  }
  script_execute(unpressedScript);
}