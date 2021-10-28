// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getButtonsPressed(){
	var amount = 0;
	with (obj_button) {
		if (is_pressed)
			amount++;
	}
	
	return amount;
}