/// @desc Read into file

if (!file_exists(grid_file))
	throw("Grid file does not exist");

grid_values = ds_list_create();        // Reset current grid
button_count = 0;

var file = file_text_open_read(grid_file);

grid_width = file_text_read_real(file);
grid_height = file_text_read_real(file);
file_text_readln(file);

for (var i = 0; i < grid_height; i++) {
	var line = file_text_readln(file);
	for (var j = 0; j < grid_width; j++) {
		switch string_char_at(line, j + 1) {        // Parses the grid
			case "0":
				ds_list_add(grid_values, BLOCK.ROCK);
				break;
			
			case "#":
				ds_list_add(grid_values, BLOCK.WALL);
				break;
			
			case "x":
				ds_list_add(grid_values, BLOCK.BUTTON);
				button_count++;
				break;
			
			case "-":
				ds_list_add(grid_values, BLOCK.EMPTY);
				break;
			
			default:
				throw("Unrecognized char in grid");
				break;
		}
	}
}