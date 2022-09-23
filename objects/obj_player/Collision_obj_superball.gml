/// @description Insert description here
// You can write your code in this editor

if (estado != estado_roll)
{
	audio_play_sound(snd_bouncing_ball, 3, 0);
	instance_create_layer(0, 0, "Player", obj_screenshake);
	instance_destroy();
}