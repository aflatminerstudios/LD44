/// afm_scrHandleReleaseActionForButton(buttonInstance)

var buttonInstance = argument0;

with (buttonInstance) {
	/// Start pressed state and run pressedScript
	if(isPressed) {
	  isPressed = false;
    
		if(shouldDuckPressedSoundOnUnpress || shouldLoopPressedSound) {
			show_debug_message("Ducking sound: " + string(currentSound));
			audio_stop_sound(currentSound); // Enhance to be a fast drop off (ducking) instead of abrupt cut off --  Micha TODO
		}
		currentSound = noone;
		
    if(unpressedSound != noone) {
      if(useSoundVariance)
        currentSound = afm_scrPlaySoundWithRandomVarianceInRange(unpressedSound, minSoundVariance, maxSoundVariance);
      else
        currentSound = afm_scrPlaySoundWithVariance(unpressedSound, 1.0);
    }
    script_execute(unpressedScript);
	}
}