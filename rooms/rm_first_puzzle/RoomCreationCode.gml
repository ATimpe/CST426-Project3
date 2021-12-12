instance_deactivate_layer("exit_open");

if (global.secret_unlock) {
	instance_deactivate_layer("secret_close");
	layer_destroy("secret_close_tile");
	instance_destroy(obj_textbox);
	layer_destroy("exit_close_tile");
	instance_activate_layer("exit_open");
	instance_deactivate_layer("exit_close");
} else {
	instance_deactivate_layer("secret_open");
	layer_destroy("secret_open_tile");
}