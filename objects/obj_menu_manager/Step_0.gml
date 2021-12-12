/// @description Insert description here
// You can write your code in this editor
var _btnID = btn_id;

if (keyboard_check_pressed(vk_down) && btn_id < instance_number(obj_menu_button) - 1) {
	btn_id++;
}

if (keyboard_check_pressed(vk_up) && btn_id > 0) {
	btn_id--;
}

if (keyboard_check_pressed(vk_space)) {
	with (obj_menu_button) {
		if (_btnID == btn_id) {
			event_perform(ev_other, ev_user0);
		}
	}
}