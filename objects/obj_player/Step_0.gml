/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

// Descobrindo o image_number da sprite que eu to usando
image_numb = sprite_get_number(sprite);
// Aumentando o valor do image_ind com base no image_spd
image_ind += image_spd;
// Zerando o image_ind depois da animação acabar
image_ind %= image_numb;



// Debug
//if (keyboard_check_released(vk_alt))
//{
//	global.stamina = 100;
//}

// Ativando o debug
//if (keyboard_check_released(vk_tab))
//{
//	global.debug = !global.debug;
//}


if (global.stamina < 50 and som_respiro and estado == estado_parado)
{
	audio_play_sound(snd_respirando_cansado, 1, 0);
	som_respiro = false;
}

estado();