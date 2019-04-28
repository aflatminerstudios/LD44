/// @description Spawn fish
// You can write your code in this editor

alarm[1] = irandom_range(fishSpawnMin, fishSpawnMax);

var yC = irandom_range(350, room_height - 300);

instance_create_layer(-300, yC, "MidgroundInstances", objFishBG);

