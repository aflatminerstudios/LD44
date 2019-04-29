/// @description Insert description here
// You can write your code in this editor

//"Timer" only runs if boat is not safe
if (!objBoat.safe) {
  count += 1;
  totalCount++;
}

alarm[0] = timeStep;

if (count >= maxCount) {
  scrTriggerCreep();
  scrResetTimer();
}