/// @description Initialize variables, etc.

baseTimer = 100;
rangeMin = -100;
rangeMax = 100;


maxCount = baseTimer + irandom_range(rangeMin, rangeMax);
count = 0;
timeStep = room_speed / 10;


alarm[0] = timeStep;
