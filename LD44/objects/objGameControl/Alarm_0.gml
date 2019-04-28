/// @description Spawn Birds
// You can write your code in this editor

var yC = irandom_range(40, 100);
instance_create_layer(room_width + 200, yC, "MidgroundInstances", objBirdFlying);

alarm[0] = irandom_range(birdSpawnMin, birdSpawnMax);