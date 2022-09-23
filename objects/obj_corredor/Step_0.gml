/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();
acha_face();

sprite = sprites[face];

if (estado == estado_preparo_ataque or estado == estado_pega)
{
	sprite = spr_pegador_ataque;
}



if (estado == estado_correr_ao_alvo)
{
	preparo_ataque();
	esbarrando();
}

estado();
