/// @description Insert description here
// You can write your code in this editor


targetX = 0;
targetY = 0;
chanceToLeave = 0.1;
attackDistance = 300;
chanceToStopAttacking = 0.10;

attacking = false;
attackCooldown = room_speed;
attackCountdown = attackCooldown;
updateAttackTime = room_speed / 4;

baseSpeed = 3;
moveSpeed = 4;
moveVariance = 2;

alarm[0] = 1;

