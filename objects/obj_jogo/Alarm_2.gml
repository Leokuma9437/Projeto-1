/// @description Rondador
// You can write your code in this editor

cria_inimigo_rondador();

if (global.level == 1 and instance_number(obj_rondador) <= 7)
{
	alarm[2] = room_speed * 6;
}

if (global.level == 2 and instance_number(obj_rondador) <= 10)
{
	alarm[2] = room_speed * 13;
}


if (global.level == 3)
{
	alarm[2] = room_speed * 14;
}


