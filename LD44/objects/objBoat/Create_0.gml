/// @description Initialize variables, etc

//For movement
maxSpeed = 5;
curSpeed = 0;
accel = 0.1;
decel = 0.04;

armor = 20;

claw = instance_create_depth(x, y + sprite_height/2, depth-1, objClaw);
claw.parent = self.id;

//for claw calculations
prevSpeed[0] = 0;


docked = false;
safe = true;
pushed = false;