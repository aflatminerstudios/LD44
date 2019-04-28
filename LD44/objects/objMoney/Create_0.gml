/// @description Initialize variables, etc

//How much is this worth?
baseValue = 5;
value = baseValue;

parent = noone;

sparkles = instance_create_depth(x, y - sprite_height / 2, depth + 1, objSparkles);
sparkles.parent = self.id;

targetIndex = 3;

dropSpeed = 5;