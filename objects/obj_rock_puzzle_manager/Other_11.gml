/// @desc Win Condition

obj_controller.is_activated = false;
global.game_state = GAMESTATE.PLAY;
var _x = warp_to_x;
var _y = warp_to_y;
var _rm = warp_rm;
with (instance_create_depth(warp_x, warp_y, depth, obj_warp)) {
	warp_room = _rm;
	warp_x = _x;
	warp_y = _y;
}