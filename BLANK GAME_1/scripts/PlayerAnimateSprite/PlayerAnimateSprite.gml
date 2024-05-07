// Update Sprite
function player_animate_sprite()
{
	var _cardinal_direction = round(direction / 90);
	var _total_frames = sprite_get_number(sprite_index) / 4;
	image_index = _local_frame + (_cardinal_direction * _total_frames);
	_local_frame += sprite_get_speed(sprite_index) / FRAME_RATE;

// if animation would loop on next game step
	if (_local_frame >= _total_frames)
	{
		_animation_end = true;
		_local_frame -= _total_frames;
	}else _animation_end = false;
}


