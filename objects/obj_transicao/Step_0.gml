/// @description Insert description here
// You can write your code in this editor
if (troquei_de_room = false)
{
	alpha += 0.03
}
else
{
	alpha -= 0.03;
}

if (alpha >= 1 and troquei_de_room = false)
{
	room_goto(rm_jogo);
	troquei_de_room = true;
}

if (alpha <= 0)
{
	instance_destroy();
}