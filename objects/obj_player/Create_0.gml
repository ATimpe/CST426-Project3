// Horizontal and Vertical movement speeds
h_spd = 0;
v_spd = 0;


move_spd = 5;                   // hoow many pixels the player moves per step
face_dir = "down";              // which direction the player is facing
player_spr = spr_player_down;   // the current sprite of the player

if (global.warp_x != -1) {      // variables for after a player warps to another room
	x = global.warp_x;
	y = global.warp_y;
	face_dir = global.warp_dir;
	player_spr = global.warp_spr;
}