/// @desc Reset Grid

with (obj_rock_puzzle_grid) {
	// Gets all objects in the grid and deletes them
	var _colideList = ds_list_create();
	collision_rectangle_list(x, y, x + (global.unit * grid_width) - 1, y + (global.unit * grid_height) - 1, all, false, true, _colideList, false);
	for (var i = 0; i < ds_list_size(_colideList); i++) {
		instance_destroy(_colideList[| i]);
	}
	event_perform(ev_other, ev_user2);
}