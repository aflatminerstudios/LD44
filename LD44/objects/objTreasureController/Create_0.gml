/// @description Insert description here
// You can write your code in this editor

minTreasures = 24;
maxTreasures = 32;
numTreasures = irandom_range(minTreasures, maxTreasures);

for (var i = 0; i < numTreasures; i++) {
  scrSpawnTreasure(); 
}