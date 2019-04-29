/// @description Insert description here
// You can write your code in this editor


targetX = 0;
targetY = 0;
chanceToLeave = 0.1;
leaving = false;
attackDistance = 250;
chanceToStopAttacking = 0.15;

attacking = false;
attackCooldown = room_speed * 2;
attackCountdown = attackCooldown;
updateAttackTime = room_speed / 4;

baseSpeed = 4;
moveSpeed = 4;
moveVariance = 2;

alarm[0] = 1;

