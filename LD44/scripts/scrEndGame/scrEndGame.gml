/// scrEndGame()


var gc = instance_create_depth(0, 0, -10000, objGameOverController);
gc.money = objGameControl.bankedMoney;
room_goto(roomGameOver);

