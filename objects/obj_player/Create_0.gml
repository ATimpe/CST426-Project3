// Horizontal and Vertical movement speeds
h_spd = 0;
v_spd = 0;

move_spd = 3;                   // hoow many pixels the player moves per step
face_dir = dir4.DOWN;              // which direction the player is facing
sprite_index = spr_player_down;   // the current sprite of the player

if (global.warp_x != -1) {      // variables for after a player warps to another room
	x = global.warp_x;
	y = global.warp_y;
	face_dir = global.warp_dir;
	sprite_index = global.warp_spr;
}