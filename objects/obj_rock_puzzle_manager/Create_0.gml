if (instance_number(obj_rock_puzzle_manager) > 1)
	instance_destroy(self);

// Adds all current rocks to a list
//with (obj_rock) { ds_priority_add(ROCK_LIST, self, self.init); }