/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();
delay_pega			= 0;
tempo_para_de_pegar = room_speed;
timer_para_de_pegar = tempo_para_de_pegar;
sprite = noone;
cor = noone;
face = 0;
xscale = 1.2;
som_slide = noone;


sprites = [spr_corredor_right, spr_corredor_right, spr_corredor_right, spr_corredor_down]

acha_face = function()
{
	if (velh > 0) {face = 0; xscale = 1.2}
	if (velv < 0) {face = 1; xscale = 1.2}
	if (velh < 0) {face = 2; xscale = -1.2}
	if (velv > 0) {face = 3; xscale = 1.2}
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
preparo_ataque = function()
{
	if (instance_exists(obj_player))
	{
		var _dist = point_distance(x, y, obj_player.x, obj_player.y)
		if (_dist < 100)
		{
			estado = estado_preparo_ataque;
		}
	}
}

estado_pega = function()
{
	
	// Criando as particulas
	part_emitter_region(global.part_dash, global.em_dash, x, x, y, y, ps_shape_ellipse, ps_distr_gaussian);
	part_emitter_burst(global.part_dash, global.em_dash, global.part_type_slide_corredor, 4)
	if (!som_slide)
	{
		som_slide = audio_play_sound(snd_sliding, 3, 0);
	}
	timer_para_de_pegar--
	estado_txt = "Pega"
	velh = lengthdir_x(6, ponto_dir);
	velv = lengthdir_y(6, ponto_dir);
	
	// O tempo acabou eu volto para outro estado
	if (timer_para_de_pegar <= 0)
	{
		som_slide = false;
		audio_stop_sound(snd_sliding);
		estado = estado_espera;
		_x2 = choose(118, 768, 967, 72);
		_y2 = choose(889, 162, 82, 1029);
		timer_para_de_pegar = tempo_para_de_pegar;
		cor = c_white;
	}
}


estado_preparo_ataque = function()
{
	estado_txt = "Preparo ataque"
	delay_pega++
	velh = 0;
	velv = 0;
	
	if (delay_pega > room_speed/2)
	{
		estado = estado_pega;
		delay_pega = 0;
	}
	if (instance_exists(obj_player))
	{
		ponto_dir = point_direction(x, y, obj_player.x, obj_player.y)
	}
	// show_debug_message(delay_pega);
}

