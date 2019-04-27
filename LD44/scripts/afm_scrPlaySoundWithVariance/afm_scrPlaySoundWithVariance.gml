/// afm_scrPlaySoundWithVariance(soundIndex, variance, shouldLoop)
/// Plays a sound, pitched up or down by the variance factor, where 1.0 = the original sound
///
/// For reference: 
/// Up a major third (4 halfsteps) = 1.2599
/// Up a fifth (7 halfsteps) = 1.4983
/// Up an octave (12 halfsteps) = 2.0
/// Down a fourth (-5 halfsteps) = 0.7492
/// Down a sixth (-8 halfsteps) = 0.62995
/// Down an octave (-12 halfsteps) = 0.5

/// Up 1 halfstep = 1.059463
///  2 1.1224620
///  3 1.1892071
///  4 1.2599210
///  5 1.33483985
///  6 1.41421356
///  7 1.49830707
///  8 1.58740105
///  9 1.68179283
/// 10 1.781797436
/// 11 1.887748625
/// 12 2.0

var soundIndex = argument[0];
var variance = argument[1];
var shouldLoop = false;
if(argument_count > 2)
	shouldLoop = argument[2];
			
if(audio_exists(soundIndex)) {
  var playedSound = audio_play_sound(soundIndex, 0, shouldLoop);
  audio_sound_pitch(playedSound, variance);
	return playedSound;
}

return noone;