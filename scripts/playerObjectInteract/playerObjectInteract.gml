// Placed in the player object. This will scan for nearby objects in front of the
// player to see if they are interactable and if they are, interact with them when the player
// presses their interact button

function playerObjectInteract(){
	var v_check = 0; // how far vertically should we check for interactable objects
	var h_check = 0; // how far horizontally should we check for interactable objects
	switch (face_dir) {
		case "up":
			v_check = -self.sprite_height / 2;
			break;
		
		case "down":
			v_check = self.sprite_height / 2;
			break;
			
		case "left":
			h_check = -self.sprite_width / 2;
			break;
		
		case "right":
			h_check = self.sprite_width / 2;
			break;
		
		default:
			throw ("error. face_dir set to unnaceptable value.");
			break;
	}
	
	if (place_meeting(x + h_check, y + v_check, obj_npc)) {
		throw ("interaction successful!");
	}
}