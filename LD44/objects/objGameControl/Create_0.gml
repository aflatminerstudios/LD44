/// @description Initialize variables, etc

//TODO: Put this somewhere more appropriate
scrInitializeGame();

//"Score" which should be accessible everywhere...maybe needs to go in another object
money = 0;
bankedMoney = 0;


clawLevel = 1;
boatLevel = 1;
timeLevel = 1;
clawLightLevel = 1;

birdSpawnMin = room_speed * 3;
birdSpawnMax = room_speed * 10;

fishSpawnMin = room_speed * 3;
fishSpawnMax = room_speed * 10;

annoySpawnMin = room_speed * 3;
annoySpawnMax = room_speed * 10;
maxSharks = 4;

alarm[0] = irandom_range(birdSpawnMin, birdSpawnMax);
alarm[1] = irandom_range(fishSpawnMin, fishSpawnMax);
alarm[2] = irandom_range(annoySpawnMin, annoySpawnMax);


finished = false;