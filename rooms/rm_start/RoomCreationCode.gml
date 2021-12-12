if (global.maze_complete && global.rock_complete) {
	layer_destroy("end_wall");
	layer_destroy("end_wall_tile");
	layer_destroy("end_door");
} else {
	layer_destroy("end_open");
	layer_destroy("end_open_tile");
}

if (global.maze_complete)
	layer_destroy("maze_warp");

if (global.rock_complete)
	layer_destroy("rock_warp");

if (global.maze_complete || global.rock_complete)
	instance_destroy(obj_textbox);