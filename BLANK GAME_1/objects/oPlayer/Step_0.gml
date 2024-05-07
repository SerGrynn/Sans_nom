// Get Player input
var _key_left = keyboard_check(vk_left);
var _key_right = keyboard_check(vk_right);
var _key_down = keyboard_check(vk_down);
var _key_up = keyboard_check(vk_up);
var _key_activate = keyboard_check_pressed(vk_space);
var _key_attack = keyboard_check_pressed(vk_shift);
var _key_item = keyboard_check_pressed(vk_control);
var _input_direction = point_direction(0,0, _key_right-_key_left,_key_down-_key_up);
var _input_magnitude = (_key_right - _key_left != 0) || (_key_down - _key_up != 0);

//Movement
_h_speed = lengthdir_x(_input_magnitude * speed_walk, _input_direction);
_v_speed = lengthdir_y(_input_magnitude * speed_walk, _input_direction);


_player_collision();

// Update Sprite Index
var _old_sprite = sprite_index;
if (_input_magnitude != 0)
{
	direction = _input_direction;
	sprite_index = sprite_run;
} else sprite_index = sprite_idle;
if (_old_sprite != sprite_index) _local_frame = 0;

// (Script)Update Image Index
player_animate_sprite();