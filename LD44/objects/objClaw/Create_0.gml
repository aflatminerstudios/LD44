/// @description Initialize variables, etc


dropSpeed = 4;
//Raising might be slower than dropping?
raiseMult = 0.75;
//Raising while carrying something is even slower
carryMult = 0.75;

parent = noone;


//For when carrying an object
carrying = false;
carriedObject = noone;

parentDist = 0;
minDistance = 0;

var clawLight = instance_create_layer(x, y, "BehindMidgroundInstances", objClawLight);
clawLight.parentInstance = self.id;
var sonarLight = instance_create_layer(x, y, "BehindMidgroundInstances", objSonarLight);
sonarLight.parentInstance = self.id;

//Do not animate automatically
image_speed = 0;
targetIndex = 0;