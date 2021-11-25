// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function isStructInDS(_dsList, _struct){
	for (var i = 0; i < ds_list_size(_dsList); i++) {
		if (string(_struct) == string(_dsList[| i]))
			return true;
	}
	
	return false;
}