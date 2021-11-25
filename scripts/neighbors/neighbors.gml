// This function takes in an x and y of the maze grid and gives all of its neighbors that
// have been filled in so that it can pick hich on to put the wall
function neighbors(_x, _y){
	n = [];
	if (_x - 1 >= 0 && maze_grid[# _x - 1, _y])
		array_push(n, Dir.LEFT);
	if (_x + 1 < maze_w && maze_grid[# _x + 1, _y])
		array_push(n, Dir.RIGHT);
	if (_y - 1 >= 0 && maze_grid[# _x, _y - 1])
		array_push(n, Dir.UP);
	if (_y + 1 < maze_h && maze_grid[# _x, _y + 1])
		array_push(n, Dir.DOWN);
	
	return n;
}