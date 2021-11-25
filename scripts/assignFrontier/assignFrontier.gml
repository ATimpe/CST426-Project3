// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function assignFrontier(_x, _y){
	// If the square in a certain direction is not off the edge of the grid, and
	// it isn't already in the frontier, it adds it to the frontier
	if (_x - 1 >= 0 
		&& !isStructInDS(maze_frontier, {x : _x - 1, y : _y})
		&& !maze_grid[# _x - 1, _y])
			ds_list_add(maze_frontier, {x : _x - 1, y : _y});
	if (_x + 1 < maze_w 
		&& !isStructInDS(maze_frontier, {x : _x + 1, y : _y})
		&& !maze_grid[# _x + 1, _y])
			ds_list_add(maze_frontier, {x : _x + 1, y : _y});
	if (_y - 1 >= 0 
		&& !isStructInDS(maze_frontier, {x : _x, y : _y - 1})
		&& !maze_grid[# _x, _y - 1])
			ds_list_add(maze_frontier, {x : _x, y : _y - 1});
	if (_y + 1 < maze_h 
		&& !isStructInDS(maze_frontier, {x : _x, y : _y + 1})
		&& !maze_grid[# _x, _y + 1])
			ds_list_add(maze_frontier, {x : _x, y : _y + 1});
}