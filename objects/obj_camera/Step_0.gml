/// @description Insert description here
// You can write your code in this editor

with (obj_player) {
	var _camX = x + (sprite_width / 2) - (camera_get_view_width(view_camera[0]) / 2);
	var _camY = y + (sprite_height / 2) - (camera_get_view_height(view_camera[0]) / 2);
	if (_camX < 0)
		_camX = 0;
	if (_camX > room_width - camera_get_view_width(view_camera[0]))
		_camX = room_width - camera_get_view_width(view_camera[0]);
	if (_camY < 0)
		_camY = 0;
	if (_camY > room_height - camera_get_view_height(view_camera[0]))
		_camY = room_height - camera_get_view_height(view_camera[0]);
	camera_set_view_pos(view_camera[0], _camX, _camY);
}