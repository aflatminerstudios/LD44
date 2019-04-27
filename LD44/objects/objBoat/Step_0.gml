/// @description Movement

if (scrHeldLeft()) {
  curSpeed -= accel;
}
if (scrHeldRight()) {
  curSpeed += accel; 
}

curSpeed = clamp(curSpeed, maxSpeed * -1, maxSpeed);

x += curSpeed;