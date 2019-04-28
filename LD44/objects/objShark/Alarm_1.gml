/// @description Adjust Speed
// You can write your code in this editor

if (attacking) {
  moveSpeed = baseSpeed + random_range(0, moveVariance);
} else {
  moveSpeed = baseSpeed + random_range(-moveVariance, moveVariance);
}

