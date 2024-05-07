function _player_collision()
{
	var _collision = false;
	
	//Horizontal Tiles
	if (tilemap_get_at_pixel(_collision_map, x + _h_speed, y))
	{
		x -= x mod TILE_SIZE;
		if (sign(_h_speed) == 1) x += TILE_SIZE - 1;
		_h_speed = 0;
		_collision = true;
	}
	
	// Horizontal Move Commit
	x += _h_speed
	
	//Vertical Tiles
	if (tilemap_get_at_pixel(_collision_map, x, y + _v_speed))
	{
		y -= y mod TILE_SIZE;
		if (sign(_v_speed) == 1) y += TILE_SIZE - 1;
		_v_speed = 0;
		_collision = true;
	}
	
	// Horizontal Move Commit
	y += _v_speed
	return _collision
}