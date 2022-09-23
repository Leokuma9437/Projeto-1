/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

// Chegando no ponto em que eu comece a rondar o player
if (instance_exists(obj_player))
{
	var _dist = point_distance(x, y, obj_player.x, obj_player.y)
	if (_dist <= 120)
	{
		estado = estado_rondando;
	}
	else if (_dist >= 360)
	{
		estado = estado_espera;
		_x2 = choose(118, 768, 967, 72);
		_y2 = choose(889, 162, 82, 1029);
	}
}


estado();