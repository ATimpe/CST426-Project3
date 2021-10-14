// This function is activated when the gamestate is PUZZLE and the player can control the rocks
function rockMovement(){
	// Checks if the current key is pressed and that there isn't a wall where
	// it will be moving and that a rock next to it won't hit a wall
	if (keyboard_check_pressed(vk_up) 
		&& !place_meeting(x, y - global.unit, obj_wall)
		&& !rockCollision(0, -global.unit))
		y -= global.unit;
	if (keyboard_check_pressed(vk_down) 
		&& !place_meeting(x, y + global.unit, obj_wall)
		&& !rockCollision(0, global.unit))
		y += global.unit;
	if (keyboard_check_pressed(vk_left) 
		&& !place_meeting(x - global.unit, y, obj_wall)
		&& !rockCollision(-global.unit, 0))
		x -= global.unit;
	if (keyboard_check_pressed(vk_right) 
		&& !place_meeting(x + global.unit, y, obj_wall)
		&& !rockCollision(global.unit, 0))
		x += global.unit;
}