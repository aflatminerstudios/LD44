/// @description scrTriggerRetreat(banked) - Triggers creep behavior of tentacle
/// param banked The amount of money banked (affects distance to retreat);

var banked = argument0;
var tentacles = instance_find(objTentacles, 0);

if (banked > 0) {
  with (tentacles) {
    retreating = true;
    retreatDist += curRetreatDist + baseRetreatDist + (floor(banked / 10) * retreatMult);
  }
}