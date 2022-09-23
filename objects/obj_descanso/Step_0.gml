/// @description Insert description here
// You can write your code in this editor
// Se o player pisar em mim, o tempo começa a descer
if (place_meeting(x, y, obj_player))
{
	part_emitter_region(global.part_dash, global.em_dash, x-64, x+64, y-64, y+64, ps_shape_ellipse, ps_distr_invgaussian);
	part_emitter_burst(global.part_dash, global.em_dash, global.part_type_rest, 5);
	global.pontos += .12;
	tempo_acabar_descanso--
	if (!som_arena_grita)
	{
		som_arena_grita = audio_play_sound(snd_Arena_grita, 0, 0, 1);
	}
}



// Se o tempo acabar eu começo a diminuir
if (tempo_acabar_descanso <= 0)
{
	image_xscale -= .05;
	image_yscale = image_xscale;
}

// Se eu for muito pequeno eu me destruo
if (image_xscale <= .1)
{
	som_arena_grita = false;
	instance_destroy();
}
