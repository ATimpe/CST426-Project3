/// @description Insert description here
// You can write your code in this editor

if (global.game_state == GAMESTATE.PUZZLE && keyboard_check_pressed(vk_escape)) {
	event_perform(ev_other, ev_user0);
}