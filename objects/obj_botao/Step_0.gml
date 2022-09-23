/// @description Insert description here
// You can write your code in this editor

var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
var _mouse_click = mouse_check_button_released(mb_left);

if (_mouse_sobre)
{
	image_blend = c_fuchsia;
	if (_mouse_click)
	{
		if (texto == "Enter the Coliseum")
		{
			audio_stop_all();
			var _transicao = instance_create_layer(0, 0, "Player", obj_transicao);
		}
		if (texto == "Quit")
		{
			game_end();
		}
	}
}
else
{
	image_blend = c_white;
}
