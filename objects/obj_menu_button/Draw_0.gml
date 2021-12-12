/// @description Insert description here
// You can write your code in this editor

var _isSelected, _btnID = btn_id;
draw_set_font(fnt_text);
draw_text(x, y, btn_txt);

with (obj_menu_manager) {
	_isSelected = _btnID == btn_id;
}

if (_isSelected) {
	draw_sprite(sprite_index, image_index, x - 48, y);
}