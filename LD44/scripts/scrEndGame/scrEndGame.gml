/// scrEndGame(won)
/// @parameter won Did they win?

var won = argument0;

var gc = instance_create_depth(0, 0, -10000, objGameOverController);

if (objGameControl.bankedMoney >= global.goalMoney) {
  won = true; 
}

gc.money = objGameControl.bankedMoney;
gc.won = won;
objSoundController.alarm[0] = 1;

room_goto(roomGameOver);

