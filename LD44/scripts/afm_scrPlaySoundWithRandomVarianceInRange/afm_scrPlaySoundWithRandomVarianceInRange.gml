/// afm_scrPlaySoundWithRandomVarianceInRange(soundIndex, minVariance, maxVariance, shouldLoop)
/// Plays a sound, modified somewhere +/- the specified percent (1.0 = 100%)
///
/// For reference, up a major third is 1.2599
/// No change is 1.0

var soundIndex = argument[0];
var minVariance = argument[1];
var maxVariance = argument[2];
var shouldLoop = false;
if(argument_count > 3)
	shouldLoop = argument[3];

return afm_scrPlaySoundWithVariance(soundIndex, random_range(minVariance, maxVariance), shouldLoop);
