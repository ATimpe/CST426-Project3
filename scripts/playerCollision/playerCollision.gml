function playerCollision(obj_collider){
	// Horizontal Collision
	if (place_meeting(x + h_spd, y, obj_collider)) {
		while (!place_meeting(x + sign(h_spd), y, obj_collider)) {
			x += sign(h_spd);
		}
		h_spd = 0;
	}
	
	if (place_meeting(x, y + v_spd, obj_collider)) {
		while (!place_meeting(x, y + sign(v_spd), obj_collider)) {
			y += sign(v_spd);
		}
		v_spd = 0;
	}
}