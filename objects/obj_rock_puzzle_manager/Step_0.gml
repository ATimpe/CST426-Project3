if (global.game_state == GAMESTATE.PUZZLE && keyboard_check_pressed(vk_escape)) {
	event_perform(ev_other, ev_user0);
}

if (keyboard_check_pressed(ord("R")))
	event_perform(ev_other, ev_user2);