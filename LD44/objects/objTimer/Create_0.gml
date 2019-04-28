/// @description Initialize variables, etc.

baseTimer = 1200;
rangeMin = -150;
rangeMax = 150;


maxCount = baseTimer + irandom_range(rangeMin, rangeMax);
count = 0;
timeStep = room_speed / 10;


alarm[0] = timeStep;
