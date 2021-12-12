/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_player)) {
	var _playerSpr, _faceDir;
	with (obj_player) {_playerSpr = sprite_index; _faceDir = face_dir}
	global.warp_x = warp_x;
	global.warp_y = warp_y;
	global.warp_dir = _faceDir;
	global.warp_spr = _playerSpr;
	warp(warp_room);
}