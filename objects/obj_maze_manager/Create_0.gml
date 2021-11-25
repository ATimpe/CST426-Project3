/// @description Insert description here
// You can write your code in this editor

maze_x = x;                                  // Y value of grid
maze_y = y;                                  // X value of grid
//maze_w = 3;                                // Width of grid
//maze_h = 3;                                // Height of grid
//maze_unit = 3;							 // How many units are in a maze square
maze_grid = ds_grid_create(maze_w, maze_h);  // Keeps all the different spot on the grid
maze_frontier = ds_list_create();            // Keeps neighboring grid spaces
for (var i = 0; i < maze_h; i++) {
	for (var j = 0; j < maze_w; j++) {
		maze_grid[# j,i] = false;
	}
}

enum Dir {
	UP,
	DOWN,
	LEFT,
	RIGHT
}

event_perform(ev_other, ev_user0);