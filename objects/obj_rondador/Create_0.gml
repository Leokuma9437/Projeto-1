/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

image_xscale = 1.5;
image_yscale = image_xscale;

estado_rondando = function()
{
	estado_txt = "Rondando"
	ronda = sin(get_timer()/1900000) * 359;
	velh = lengthdir_x(vel_max, ronda);
	velv = lengthdir_y(vel_max, ronda);
	
	esbarrando();
}

esbarrando = function()
{
	var _trombo = instance_place(x, y, obj_corredor)
	if (_trombo)
	{
		var _dir = choose(0, 90, 270, 180)
		velh = lengthdir_x(5, _dir);
		velv = lengthdir_y(5, _dir);
		estado = estado_espera;
		_x2 = choose(118, 768, 967, 72);
		_y2 = choose(889, 162, 82, 1029);
	}
}


