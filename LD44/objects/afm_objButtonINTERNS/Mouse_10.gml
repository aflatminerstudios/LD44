/// @description Insert description here
// You can write your code in this editor


if(allowSlideIn) {	
	/// If mouse is down, start pressed state and run pressedScript
	if(mouse_check_button(mb_any)) {
	  if(!isPressed) {
	    isPressed = true;
    
	    if(pressedSound != noone) {
	      if(useSoundVariance)
	        afm_scrPlaySoundWithRandomVarianceInRange(pressedSound, minSoundVariance, maxSoundVariance);
	      else
	        afm_scrPlaySoundWithVariance(pressedSound, 1.0);
	    }
	    script_execute(pressedScript);
	  }
	} else {
	  // This is mouseover/hover state
	  // TODO
	  // We are currently not handling this, but we could add a third sprite
	  //   and assign a mouseover state similar to isPressed

	}
}