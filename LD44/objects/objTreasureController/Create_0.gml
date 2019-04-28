/// @description Insert description here
// You can write your code in this editor

minTreasures = 4;
maxTreasures = 7;
numTreasures = irandom_range(minTreasures, maxTreasures);

for (var i = 0; i < numTreasures; i++) {
  scrSpawnTreasure(); 
}