/// @desc Generate Maze

// Create walls arounf the maze
// Walls wfor each unit start one behind where the actual unit is so that alls remain consinistant
// and are only one unit thick each
var i, j;
for (i = -1; i < maze_w * maze_unit; i++) {
	instance_create_depth(maze_x + (global.unit * i), maze_y - global.unit, 0, obj_wall);
	instance_create_depth(maze_x + (global.unit * i), maze_y + (global.unit * (maze_h * maze_unit - 1)), 0, obj_wall);
}

for (i = 0; i < maze_h * maze_unit - 1; i++) {
	instance_create_depth(maze_x - global.unit, maze_y + (global.unit * i), 0, obj_wall);
	instance_create_depth(maze_x + (global.unit * (maze_w * maze_unit - 1)), maze_y + (global.unit * i), 0, obj_wall);
}

for (i = 1; i < maze_w; i++) {
	for (j = 1; j < maze_h; j++) {
		instance_create_depth(maze_x + global.unit * maze_unit * i - global.unit, maze_y + global.unit * maze_unit * j - global.unit, 0, obj_wall);
	}
}

// Picks a random spot to start from
var _x = irandom(maze_w - 1);
var _y = irandom(maze_h - 1);
var _curSquare;               // The current square
var _frontierIndex;           // Randomly selected index to pull from fronteir
var _neighbors;
maze_grid[# _x, _y] = true;

// Places all the non-filled in spaces into the frontier
assignFrontier(_x, _y);

while (ds_list_size(maze_frontier) > 0) {
	// Picks a random square from the frontier
	_frontierIndex = irandom(ds_list_size(maze_frontier) - 1);
	_curSquare = maze_frontier[| _frontierIndex];
	maze_grid[# _curSquare.x, _curSquare.y] = true;
	
	// After filling in that square, it finds if it has more than 1 neighbor. If it does, it will
	// Place a wall down on all but one
	_neighbors = neighbors(_curSquare.x,  _curSquare.y);
	if (array_length(_neighbors) > 1) {
		// Passes in the x and y value of the square
		placeMazeWall(maze_x + _curSquare.x * maze_unit * global.unit, 
						maze_y +_curSquare.y *  maze_unit * global.unit, 
						_neighbors, 
						irandom(array_length(_neighbors) - 1));
	}
	ds_list_delete(maze_frontier, _frontierIndex);
	assignFrontier(_curSquare.x, _curSquare.y);
}