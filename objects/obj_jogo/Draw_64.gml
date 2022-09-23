/// @description Insert description here
// You can write your code in this editor

var _x1, _x2, _y1, _y2;
var _gui_w		= display_get_gui_width();
var _gui_h		= display_get_gui_height();
var _larg		= 120;
var _marg		= 10;
var _alt		= 7.5;
_x1				= 100 + 50;
_x2				= _x1 + _larg;
_y1				= 40;
_y2				= _y1 + _alt;

// Escrevendo "Stamina" em cima da Stamina
draw_set_color(c_black);
draw_set_font(fnt_anime);
draw_text(_x1, _y1 - 22, "Stamina");
draw_text(_x1, _y1 + 18, "Dash")
draw_set_font(-1);
draw_set_color(c_white);
// Desenhando a stamina
draw_healthbar(_x1, _y1, _x2, _y2, global.stamina, c_black, c_red, c_green,	0, true, true);
// Desenhando o delay do Dash
draw_healthbar(_x1, _y1 + 40, _x2, _y2 + 40, global.timer_delay_roll, c_white, c_red, c_green, 0, false, true);
// Desenhando o numero de inimigos
draw_sprite_ext(spr_corredor_down, 0, _x1 + 10, _y1 + 70, .6, .6, 0, c_white, .8);
draw_sprite_ext(spr_rondador_down, 0, _x1 + 10, _y1 + 90, .6, .6, 0, c_white, .8);
draw_sprite_ext(spr_SuperBall,	   0, _x1 + 73, _y1 + 60, .5, .5, 0, c_white, .8);
draw_sprite_ext(spr_tocador_guita, 0, _x1 + 71, _y1 + 90, .5, .5, 0, c_white, .8);
draw_set_color(c_black);
draw_text(_x1 + 30, _y1 + 49, "= " + string(instance_number(obj_corredor)));
draw_text(_x1 + 30, _y1 + 69, "= " + string(instance_number(obj_rondador)));
draw_text(_x1 + 90, _y1 + 49, "= " + string(instance_number(obj_superball)));
draw_text(_x1 + 90, _y1 + 69, "= " + string(instance_number(obj_tocador_guita)));

// Colocando os meus creditos no começo
if (global.se_achando)
{
	alfinha += .003;
	if (alfinha >= .8) alfinha2 += .01;
	draw_text_transformed_color(_gui_w - 180, _gui_h - 120, "A GAME BY", 1.9, 1.9, 0, c_black, c_black, c_black, c_black, alfinha);
	draw_text_transformed_color(_gui_w - 180, _gui_h - 90, "Leokuma",	 1.9, 1.9, 0, c_black, c_black, c_black, c_black, alfinha2);
	if (alfinha2 >= .8 and ativo)
	{
		alarm[4] = room_speed * 2;
		ativo = false;
	}
}
draw_set_color(c_white);

// draw_sprite_ext(spr_tecla_i, 0, _x1 + 42, _y1 + 15, .65, .65, 0, c_white, .9);
draw_sprite_ext(spr_tecla_espaco, 0, _x1 + 42, _y1 - 5, .45, .45, 0, c_white, .9);

// Desenhando o score
draw_set_font(fnt_scoreboard);
draw_set_color(c_black);
draw_text_transformed(room_width - 400, 18, "SCORE: " + string(round(global.pontos)), 2.5, 2.5, 0);
if (global.level < 3)
{
	draw_text_transformed_color(350, 10, "Level: " + string(global.level) + " / 3", 2, 2, 0, c_red, c_red, c_red, c_red, .9);
	draw_text_transformed_color(350, 54, "Next level in:" + string(round(next_level/60)), 1, 1,0,c_black, c_black, c_black, c_black, .9);
}
else
{
	draw_text_transformed_color(350, 20, "Level MAX - SURVIVE", 2, 2, 0, c_red, c_red, c_red, c_red, .9);
}
draw_set_color(c_white);
draw_set_font(-1);

// Desenhando o Retrato do personagem
draw_sprite_ext(spr_retrato, global.cansasso, 15, 15, 2.7, 2.7, 0, c_white, 1);

if (!instance_exists(obj_player))
{
	desenha_leaderboards();
}

