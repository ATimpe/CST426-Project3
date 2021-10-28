/// @desc Spawn grid objects

var spawn_type;
var spawn_layer = "Instances";

for (var i = 0; i < grid_height; i++) {
	for (var j = 0; j < grid_width; j++) {
		switch ds_list_find_value(grid_values, j + i * grid_width) {        // Parses the grid
			case BLOCK.ROCK:
				spawn_type = obj_rock;
				break;
			
			case BLOCK.WALL:
				spawn_type = obj_wall;
				break;
			
			case BLOCK.BUTTON:
				spawn_type = obj_button;
				spawn_layer = "Buttons";
				break;
			
			case BLOCK.EMPTY:
				spawn_type = -1;
				break;
			
			default:
				spawn_type = -1;
				break;
		}
		
		if (spawn_type != -1)
			instance_create_layer(x + (global.unit * j), y + (global.unit * i), spawn_layer, spawn_type);
		
		spawn_layer = "Instances";
	}
}