// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wallAutoTile(_wallType, _tileset){
	with (_wallType) {
		var _wallUp = place_meeting(x, y - global.unit, _wallType);
		var _wallDown = place_meeting(x, y + global.unit, _wallType);
		var _wallLeft = place_meeting(x - global.unit, y, _wallType);
		var _wallRight = place_meeting(x + global.unit, y, _wallType);
		var _wallUpLeft = place_meeting(x - global.unit, y - global.unit, _wallType);
		var _wallDownLeft = place_meeting(x - global.unit, y + global.unit, _wallType);
		var _wallUpRight = place_meeting(x + global.unit, y - global.unit, _wallType);
		var _wallDownRight = place_meeting(x + global.unit, y + global.unit, _wallType);
		
		// if ()
	}
}