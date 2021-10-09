/// @function                  playerMovement(move_spd)
/// @param {real} move_spd     movement speed

function playerMovement(move_spd){
	v_spd = 0;
	h_spd = 0;
	
	if(keyboard_check(vk_up)) {
		v_spd -= move_spd;
		face_dir = dir4.UP;
		player_spr = spr_player_up;
	}
	
	if(keyboard_check(vk_down)) {
		v_spd += move_spd;
		face_dir = dir4.DOWN;
		player_spr = spr_player_down;
	}
	
	if(keyboard_check(vk_left)) {
		h_spd -= move_spd;
		face_dir = dir4.LEFT;
		player_spr = spr_player_left;
	}
	
	if(keyboard_check(vk_right)) {
		h_spd += move_spd;
		face_dir = dir4.RIGHT;
		player_spr = spr_player_right;
	}
}