/// scrBankMoney()

with (objTimer) {
  maxCount = baseTimer + irandom_range(rangeMin, rangeMax);
  count = 0;
}

objGameControl.bankedMoney += objGameControl.money;
objGameControl.money = 0;

