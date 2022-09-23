/// @description Insert description here
// You can write your code in this editor

randomize();


delay_cria_descanso			= room_speed * 16;
timer_delay_cria_descanso	= delay_cria_descanso
cria_descanso				= function()
{
	var _xx = random_range(150, room_width - 200) ;
	var _yy = random_range(150, room_height - 200);
	instance_create_layer(_xx, _yy, "Paredes", obj_descanso);
}
passou_de_level				= false;
alfinha						= 0;
alfinha2					= 0; 
ativo						= true;
desce_alfinhas				= false;
next_level					= room_speed * 67

audio_play_sound(snd_rock_game, 1, false);
audio_play_sound(snd_arena_crowd, 1, true);

LootLockerReset();

desenha_leaderboards = function()
{
	draw_sprite(spr_tela_leaderboards, 0, 0, 0);
}

cria_inimigo_corredor = function()
{
	var _corredor = instance_create_layer(100, 160, "Inimigos", obj_corredor);
}

cria_inimigo_rondador = function()
{
	var _rondador = instance_create_layer(1090, 1090, "Inimigos", obj_rondador);
}

cria_superball = function()
{
	var _superball = instance_create_layer(100, 1050, "Inimigos", obj_superball);
	audio_play_sound(snd_bouncing_ball, 1, 0);
}

// Ativando os alarmes do nivel 1
alarm[1] = room_speed * 4;
alarm[2] = room_speed * 6;
cria_superball();

// Ativando o alarme de passar de level
alarm[5] = room_speed * 67;


