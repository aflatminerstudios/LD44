/// @description Initialize variables, etc.

baseTimer = 300;
rangeMin = -100;
rangeMax = 300;


maxCount = baseTimer + irandom_range(rangeMin, rangeMax);
count = 0;
timeStep = room_speed / 10;


alarm[0] = timeStep;
