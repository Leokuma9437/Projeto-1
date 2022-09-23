/// @description Insert description here
// You can write your code in this editor
image_xscale = 2.1;
image_yscale = image_xscale;

direction	= irandom(359);
speed		= 2;
tempo_posso_tocar = room_speed/2;
timer_posso_tocar = tempo_posso_tocar;

tocando = function()
{
	timer_posso_tocar--
	if (timer_posso_tocar <= 0)
	{
		part_emitter_region(global.part_dash, global.em_dash, x-15, x+15,y-25, y, ps_shape_diamond, ps_distr_invgaussian);
		part_emitter_burst(global.part_dash, global.em_dash, global.part_type_guitarra, 40);
		timer_posso_tocar = tempo_posso_tocar;
	}
}