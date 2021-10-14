/// @desc Switch Between Gamestates

// This part of the controller switches the game states

if (global.game_state == GAMESTATE.PUZZLE)
	global.game_state = GAMESTATE.PLAY;
else if (global.game_state == GAMESTATE.PLAY)
	global.game_state = GAMESTATE.PUZZLE;