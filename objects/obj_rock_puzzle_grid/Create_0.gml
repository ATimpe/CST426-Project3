/// @desc Instantiate Variables

enum BLOCK {
	ROCK,
	WALL,
	BUTTON,
	EMPTY
}

grid_values = ds_list_create();     // List of the blocks in the grid
//grid_file = ""                    // Name of the file for the grid
grid_width = 0;
grid_height = 0;
button_count = 0;

event_perform(ev_other, ev_user0);
event_perform(ev_other, ev_user2);