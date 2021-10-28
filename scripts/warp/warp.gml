function warp(_warpRoom){
	if (room_exists(_warpRoom))
		room_goto(_warpRoom);
	else
		throw ("error. room does not exist");
}