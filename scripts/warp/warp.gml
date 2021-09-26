function warp(warp_room){
	if (room_exists(warp_room))
		room_goto(warp_room);
	else
		throw ("error. room does not exist");
}