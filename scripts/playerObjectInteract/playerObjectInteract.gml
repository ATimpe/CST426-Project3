// Placed in the player object. This will scan for nearby objects in front of the
// player to see if they are interactable and if they are, interact with them when the player
// presses their interact button

function playerObjectInteract(){
	var v_check = 0; // how far vertically should we check for interactable objects
	var h_check = 0; // how far horizontally should we check for interactable objects
	switch (face_dir) {
		case dir4.UP:
			v_check = -self.sprite_height / 2;
			break;
		
		case dir4.DOWN:
			v_check = self.sprite_height / 2;
			break;
			
		case dir4.LEFT:
			h_check = -self.sprite_width / 2;
			break;
		
		case dir4.RIGHT:
			h_check = self.sprite_width / 2;
			break;
	}
	
	if (place_meeting(x + h_check, y + v_check, obj_npc)) {
		instance_create_layer(0, 0, "Instances", obj_textbox);
	}
	
	if (place_meeting(x + h_check, y + v_check, obj_controller)) {
		// Switches the gamestate through the manager
		with (obj_controller) {
			if (!is_interactable)
				exit;
		}
		event_perform_object(obj_rock_puzzle_manager, ev_other, ev_user0);
	}
}