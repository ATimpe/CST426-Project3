/// @function                 placeMazeWall(_x, _y, n, nIndex);
/// @param {real}  _x         The x value of the square
/// @param {real}  _y         The y value of the square
/// @param {array} n          Array of neighbors
/// @param {array} nIndex     The index to skip
/// @description              Places walls in the maze when there's more than 2 neighbors
function placeMazeWall(_x, _y, n, nIndex){
	var i, j;
	for (i = 0; i < array_length(n); i++) {
		if (i == nIndex)
			continue;
		
		switch (n[i]) {
			case Dir.UP:
				for (j = 0; j < maze_unit - 1; j++)
					instance_create_depth(_x + (global.unit * j), _y - global.unit, 0, obj_mazewall);
				break;
			
			case Dir.DOWN:
				for (j = 0; j < maze_unit - 1; j++)
					instance_create_depth(_x + (global.unit * j), _y + (global.unit * (maze_unit - 1)), 0, obj_mazewall);
				break;
			
			case Dir.LEFT:
				for (j = 0; j < maze_unit - 1; j++)
					instance_create_depth(_x - global.unit, _y + (global.unit * j), 0, obj_mazewall);
				break;
			
			case Dir.RIGHT:
				for (j = 0; j < maze_unit - 1; j++)
					instance_create_depth(_x + global.unit * (maze_unit - 1), _y + (global.unit * j), 0, obj_mazewall);
				break;
		}	
	}
}