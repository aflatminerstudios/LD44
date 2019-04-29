/// @description scrResetTimer() - Resets the timer to a new time

with (objTimer) {
  maxCount = baseTimer + irandom_range(rangeMin, rangeMax);
  count = 0;
}
