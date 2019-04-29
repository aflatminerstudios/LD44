/// @description Initialize variables, etc.

baseTimer = 70;
rangeMin = -40;
rangeMax = 30;


maxCount = baseTimer + irandom_range(rangeMin, rangeMax);
count = 0;
timeStep = room_speed / 10;


alarm[0] = timeStep;
