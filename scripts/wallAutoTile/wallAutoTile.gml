// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wallAutoTile(_wallType, _tileset){
	var _tilemap = layer_tilemap_get_id(layer_get_id("Wall"));
	var _wallUp;
	var _wallDown;
	var _wallLeft;
	var _wallRight;
	var _wallUpLeft;
	var _wallDownLeft;
	var _wallUpRight;
	var _wallDownRight;
	with (_wallType) {
		_wallUp = place_meeting(x, y - global.unit, _wallType);
		_wallDown = place_meeting(x, y + global.unit, _wallType);
		_wallLeft = place_meeting(x - global.unit, y, _wallType);
		_wallRight = place_meeting(x + global.unit, y, _wallType);
		_wallUpLeft = place_meeting(x - global.unit, y - global.unit, _wallType);
		_wallDownLeft = place_meeting(x - global.unit, y + global.unit, _wallType);
		_wallUpRight = place_meeting(x + global.unit, y - global.unit, _wallType);
		_wallDownRight = place_meeting(x + global.unit, y + global.unit, _wallType);
		
		if (_wallUp && !_wallDown && !_wallLeft && !_wallRight)
			tilemap_set(_tilemap, 27, x / global.unit, y / global.unit);
		if (!_wallUp && _wallDown && !_wallLeft && !_wallRight)
			tilemap_set(_tilemap, 5, x / global.unit, y / global.unit);
		if (!_wallUp && !_wallDown && _wallLeft && !_wallRight)
			tilemap_set(_tilemap, 17, x / global.unit, y / global.unit);
		if (!_wallUp && !_wallDown && !_wallLeft && _wallRight)
			tilemap_set(_tilemap, 15, x / global.unit, y / global.unit);
			
		if (_wallUp && _wallDown && !_wallLeft && !_wallRight)
			tilemap_set(_tilemap, 11, x / global.unit, y / global.unit);
		if (!_wallUp && !_wallDown && _wallLeft && _wallRight)
			tilemap_set(_tilemap, 22, x / global.unit, y / global.unit);
		
		if (_wallUp && _wallDown && _wallLeft && !_wallRight)
			tilemap_set(_tilemap, 10, x / global.unit, y / global.unit);
		if (_wallUp && _wallDown && !_wallLeft && _wallRight)
			tilemap_set(_tilemap, 9, x / global.unit, y / global.unit);
		if (_wallUp && !_wallDown && _wallLeft && _wallRight)
			tilemap_set(_tilemap, 20, x / global.unit, y / global.unit);
		if (!_wallUp && _wallDown && _wallLeft && _wallRight)
			tilemap_set(_tilemap, 21, x / global.unit, y / global.unit);
		
		if (!_wallUp && _wallDown && !_wallLeft && _wallRight)
			tilemap_set(_tilemap, 4, x / global.unit, y / global.unit);
		if (!_wallUp && _wallDown && _wallLeft && !_wallRight)
			tilemap_set(_tilemap, 6, x / global.unit, y / global.unit);
		if (_wallUp && !_wallDown && !_wallLeft && _wallRight)
			tilemap_set(_tilemap, 26, x / global.unit, y / global.unit);
		if (_wallUp && !_wallDown && _wallLeft && !_wallRight)
			tilemap_set(_tilemap, 28, x / global.unit, y / global.unit);
		
		if (_wallUp && _wallDown && _wallLeft && _wallRight)
			tilemap_set(_tilemap, 16, x / global.unit, y / global.unit);
			
	}
}