/// afm_scrHandlePressActionForButton(buttonInstance)

var buttonInstance = argument0;

with (buttonInstance) {
	/// Start pressed state and run pressedScript

	if(!isPressed) {
	  isPressed = true;
		
	  if(pressedSound != noone) {
	    if(useSoundVariance)
	      currentSound = afm_scrPlaySoundWithRandomVarianceInRange(pressedSound, minSoundVariance, maxSoundVariance, shouldLoopPressedSound);
	    else
	      currentSound = afm_scrPlaySoundWithVariance(pressedSound, 1.0, shouldLoopPressedSound);
	  }
	  script_execute(pressedScript);
	}
}