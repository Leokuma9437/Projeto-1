/// @description Insert description here
// You can write your code in this editor

segue_player = function()
{
	if (instance_exists(obj_player))
	{
		x = lerp(x, obj_player.x, .1);
		y = lerp(y, obj_player.y, .1);
	}
	// Pegando as medidas da minha camera
	var _camx = camera_get_view_width(view_camera[0]);
	var _camy = camera_get_view_height(view_camera[0]);
	// Variaveis para que minha camera não la no canto, já que o
	// Ponto de origem é no superior esquerdo
	var _cam_x = x - _camx/2;
	var _cam_y = y - _camy/2;
	
	// Impedindo que a camera saia da room
	// Minha camera não pode voltar mais que a posição 0
	// E não pode ir mais que o tamanho da room - o tamanho da 
	//camera (lembrando que seu ponto de origem é no superior esquerdo)
	_cam_x = clamp(_cam_x, 0 + 15, room_width - _camx - 15);
	_cam_y = clamp(_cam_y, 0 + 15, room_height - _camy - 15);
	
	// Setando a posição da camera
	camera_set_view_pos(view_camera[0], _cam_x + global.aumx, _cam_y + global.aumy);

}


	