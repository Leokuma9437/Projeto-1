/// @description Insert description here
// You can write your code in this editor



audio_play_sound(snd_aww_crowd, 0, 0);

instance_create_layer(400, 40, layer, objLLPlayerNameSimple);
instance_create_layer(20, 20, layer, objLLTopHighscores);

LootLockerSubmitScore("7135", global.pontos)

if (instance_exists(obj_sys_part))
{
	instance_destroy(obj_sys_part);
}


