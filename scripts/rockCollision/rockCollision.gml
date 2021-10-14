/// @param {real} x_mv  how many pixels on the x-axis is the object moving
/// @param {real} y_mv  how many pixels on the x-axis is the object moving

/// Because the collision between rocks in more complex, here is a function to detect
/// if the rock directly next to the moving rock is going to collide or not (ex. if the rock next 
/// to it is also going to move left, they both move left. If there is a wall next to that rock
/// it won't move either of them)

function rockCollision(x_mv, y_mv){
	if (place_meeting(x + x_mv, y + y_mv, obj_rock)) {
		return rockCollision(x_mv + (sign(x_mv) * global.unit),   // adds another unit to _mv and
						y_mv + (sign(y_mv) * global.unit));// uses recursion to find what is
	}													   // next to the rock
	
	if (place_meeting(x + x_mv, y + y_mv, obj_wall))
		return true;
	else
		return false;

}