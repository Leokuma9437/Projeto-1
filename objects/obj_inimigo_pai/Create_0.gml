/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();
alvo				= noone;
vel_max				= 2;
estado				= noone;
delay_espera		= room_speed * 2;
timer_delay_espera	= delay_espera;

estado_parado = function()
{
	estado_txt = "Parado";
	velh = 0;
	velv = 0;
}

estado_correr_ao_alvo = function()
{
	image_blend = c_white;
	estado_txt = "Correndo ao alvo";
	if (instance_exists(obj_player)) 
	{
		alvo = obj_player
	}
	else alvo = noone;
	var _dir;
	if (alvo)
	{
		_dir = point_direction(x, y, alvo.x, alvo.y);
		velh = lengthdir_x(vel_max, _dir);
		velv = lengthdir_y(vel_max, _dir);
	}
	else
	{
		estado = estado_parado;
	}
}

estado_espera = function()
{
	estado_txt = "esperando"
	timer_delay_espera--

	var _dir = point_direction(x, y, _x2, _y2);
	
	velh = lengthdir_x(vel_max, _dir);
	velv = lengthdir_y(vel_max, _dir);
	
	if (timer_delay_espera <= 0)
	{
		estado = estado_correr_ao_alvo;
		timer_delay_espera = delay_espera;
	}
}


estado = estado_correr_ao_alvo;
