/// scrBankMoney()

scrResetTimer();

scrTriggerRetreat(objGameControl.money);
objGameControl.bankedMoney += objGameControl.money;
objGameControl.money = 0;



if (objGameControl.bankedMoney >= global.goalMoney && !objGameControl.finished) {

  scrWinMenu();
  objMenu.alarm[0] = 1;
  //scrEndGame(); 
} else {
  objMenu.leaving = true; 
}