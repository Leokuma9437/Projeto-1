/// @description Corredor
// You can write your code in this editor

cria_inimigo_corredor()

if (global.level == 1 and instance_number(obj_corredor) <= 4)
{
	alarm[1] = room_speed * 10;
}

if (global.level == 2 and instance_number(obj_corredor) <= 8)
{
	alarm[1] = room_speed * 14;
}
if (global.level == 3)
{
	alarm[1] = room_speed * 16;
}

