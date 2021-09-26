/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_player)) {
	global.warp_x = warp_x;
	global.warp_y = warp_y;
	global.warp_dir = obj_player.face_dir;
	global.warp_spr = obj_player.player_spr;
	warp(warp_room);
}