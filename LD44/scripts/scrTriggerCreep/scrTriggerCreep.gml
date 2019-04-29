/// @description Triggers creep behavior of tentacle

var tentacles = instance_find(objTentacles, 0);

with (tentacles) {
  creeping = true;
  creepDist += curCreepDist;
}