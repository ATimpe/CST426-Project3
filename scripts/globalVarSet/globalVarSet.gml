// This script should only ever be run once at the start of the game to 
// initilize all global variables
function initializeGlobalVariables(){
	enum dir4 {
		UP,
		DOWN,
		LEFT,
		RIGHT
	}
	
	enum GAMESTATE {
		PLAY,
		TEXT,
		PUZZLE
	}
	
	global.warp_dir = "";
	global.warp_spr = spr_player_down;
	global.warp_x = -1;
	global.warp_y = -1;
	global.game_state = GAMESTATE.PLAY;
	global.unit = 32;                       //The amount of pixels for every unit in the room grid
	randomise();
}