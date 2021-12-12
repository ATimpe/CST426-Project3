/// @description Insert description here
// You can write your code in this editor

if (global.game_state == GAMESTATE.PLAY) {
	playerMovement(move_spd);
	playerCollision(obj_wall);
	if (place_meeting(x, y, obj_key)) {
		if (room == rm_maze)
			global.maze_complete = true;
		if (room == rm_second_puzzle)
			global.rock_complete = true;
		global.warp_x = 448;
		global.warp_y = 128;
		global.warp_dir = dir4.DOWN;
		global.warp_spr = spr_player_down;
		room_goto(rm_start);
	}

	x += h_spd;
	y += v_spd;

	if (keyboard_check_pressed(vk_space)) {
		playerObjectInteract();
	}
}