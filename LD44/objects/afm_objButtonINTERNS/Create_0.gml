/// @description Insert description here
// You can write your code in this editor

/// Public variables (sprites, sound, scripts)

// Slideover = ability to tap outside the button and slide into it to activate a press
// Like running your finger across piano keys
// Most buttons will not want this
allowSlideIn = false;
shouldSlideOutActivateUnpressedScript = false;

isPressed = false;

// Sprites
pressedSprite = sprite_index; // down state, defaults to object sprite
unpressedSprite = sprite_index; // normal state, defaults to the object sprite

// Sounds
pressedSound = afm_sndButtonPress;
unpressedSound = noone;

// Scripts
// Button actions feel better on button up (unpressed) on regular buttons
// Radio buttons don't typically need these
pressedScript = scrNullScript;
unpressedScript = scrNullScript;

// Distance to move the button when pressed
// Set useAutoPressAnimation to false for sprites with button press movement built in
// Set to 2, 3, for a decent free animation
useAutoPressAnimation = true;
pressedOffsetX = 2;
pressedOffsetY = 3;

// Vary the sound on every press/release, turn off to not vary the sound
useSoundVariance = true;
minSoundVariance = 0.97;
maxSoundVariance = 1.05