/// @description scrUpgradeTime()

var level = objGameControl.timeLevel;
var timer = objTimer;

if (level < 9) {
  switch (level % 3) {
    case 0:
      timer.baseTimer += 20;
      break;
    case 1:
      timer.rangeMin += 20;
      break;
    case 2:
      timer.rangeMax += 20;
      break;
  }
} else {
  baseTimer += 5;
  timer.rangeMin -= 5;
  timer.rangeMax += 5;
}

objGameControl.timeLevel += 1;