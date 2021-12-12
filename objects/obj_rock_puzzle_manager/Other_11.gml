/// @desc Win Condition

with (obj_controller) {is_interactable = false;}
global.game_state = GAMESTATE.PLAY;

instance_activate_layer("exit_open");
instance_deactivate_layer("exit_close");
layer_destroy("exit_close_tile");