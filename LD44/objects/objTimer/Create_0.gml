/// @description Initialize variables, etc.

baseTimer = 100;
rangeMin = -70;
rangeMax = 50;


maxCount = baseTimer + irandom_range(rangeMin, rangeMax);
count = 0;
timeStep = room_speed / 10;


alarm[0] = timeStep;
