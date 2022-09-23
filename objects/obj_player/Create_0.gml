/// @description Insert description here
// You can write your code in this editor

event_inherited();
vel_max					= 5;
tempo_roll				= room_speed/3.5;
timer_roll				= tempo_roll;
delay_roll				= 100;
global.timer_delay_roll	= delay_roll;
face					= 0;
sprite					= noone;
i_alpha					= 1;
xscale					= 1.2;
image_ind				= 0;
image_spd				= 10/room_speed;
som_passos				= noone;
som_dash				= noone;
cor						= c_white;
som_respiro				= true;


#region Mapeando as teclas
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("S"), vk_down);
// keyboard_set_map(ord("C"), ord("I"));
#endregion
#region Sprites
sprites = [[spr_player_idle_right, spr_player_idle_up, spr_player_idle_right, spr_player_idle_down],
			[spr_player_run_right, spr_player_run_up, spr_player_run_right, spr_player_run_down],
			[spr_dash_up, spr_dash_up, spr_dash_up, spr_dash_up],
			]


#endregion


movendo = function()
{
	var _up, _left, _right, _down, _dir;
	_up		= keyboard_check(vk_up);
	_down	= keyboard_check(vk_down);
	_left	= keyboard_check(vk_left);
	_right	= keyboard_check(vk_right);
	// Setando as faces
	if (_right) 
	{
		xscale = 1.2;
		face = 0; 
		global.aumx = lerp(global.aumx, 40, .05)
	}
	if (_up)
	{
		xscale = 1.2;
		face = 1; 
		global.aumy = lerp(global.aumy, -40, .05)
	}
	if (_left) 
	{
		face = 2; 
		xscale = -1.2;
		global.aumx = lerp(global.aumx, -40, .05)
	}
	if (_down)
	{
		xscale = 1.2;
		face = 3; 
		global.aumy = lerp(global.aumy, 40, .05)
	}
	
	if (_right xor _left or _down xor _up)
	{
		_dir = point_direction(0, 0, (_right - _left), (_down - _up)) 
		velh = lengthdir_x(vel_max, _dir);
		velv = lengthdir_y(vel_max, _dir);
	}
	else
	{
		velh = 0;
		velv = 0;
	}
}
roll = function()
{
	if (global.timer_delay_roll >= delay_roll)
	{
		var _roll = keyboard_check_released(vk_space);
		if (_roll)
		{
			estado = estado_roll;
		}
	}
}
perdendo = function()
{
	if (place_meeting(x, y, obj_inimigo_pai) or place_meeting(x,y, obj_tocador_guita))
	{
		audio_play_sound(snd_hit, 3, 0, 1, 1.50);
		instance_create_layer(0, 0, "Player", obj_screenshake);
		instance_destroy();
	}
}
ajusta_sprite = function(_n_sprite)
{
	sprite = sprites[_n_sprite][face];
}

estado_parado = function()
{
	velh = 0;
	velv = 0;
	estado_txt = "Parado";
	ajusta_sprite(0);
	global.timer_delay_roll++
	var _up, _left, _right, _down;
	_up		= keyboard_check(vk_up);
	_down	= keyboard_check(vk_down);
	_left	= keyboard_check(vk_left);
	_right	= keyboard_check(vk_right);
	// Se eu tentar me mover eu saio do estado de parado
	if (_right or _down or _up or _left)
	{
		estado = estado_movimento;
	}
	
	// Se estou parado, minha stamina sobe devagar
	if (global.stamina < 100)
	{
		global.stamina += .12;
	}
	roll();
	perdendo();
}
estado_movimento = function()
{
	som_respiro = true;
	audio_pause_sound(snd_respirando_cansado);
	global.timer_delay_roll++
	estado_txt = "Movimentando"
	movendo();
	ajusta_sprite(1);
	
	// Colocando o som de passos
	if (!som_passos)
	{
		som_passos = audio_play_sound(snd_footsteps, 1, true);
	}
	if (velh = 0 and velv = 0)
	{
		audio_stop_sound(snd_footsteps);
		som_passos = false;
		estado = estado_parado;
	}
	// Se estou me movendo, a minha stamina desce
	if (global.stamina > 0)
	{
		global.stamina -= .1;
	}
	// Se minha stamina está com mais de 50%
	if (global.stamina >  50)
	{
		global.cansasso = 0;
		vel_max = 4.2;
	}
	// Se ela está entre 65+
	if (global.stamina <= 65 and global.stamina > 50)
	{
		global.cansasso = 1
		vel_max = 3.8
	}
	// Se minha stamina ja passou da metade
	if (global.stamina <= 50 and global.stamina > 25)	
	{
		global.cansasso = 1;
		vel_max = 3.2;
	}
	// Se minha stamina esta em 1/4
	if (global.stamina <= 25 and global.stamina >  5)	
	{
		global.cansasso = 2;
		vel_max = 2.3;
	}
	// Se minha stamina acabou
	if (global.stamina <= 5 )	
	{
		global.cansasso = 3;
		vel_max = 1.5;
	}
	perdendo();
	roll();
}
estado_roll = function()
{
	cor = c_black;
	part_emitter_region(global.part_dash, global.em_dash, x-10, x+10, y-10, y+10, ps_shape_line, ps_distr_gaussian);
	part_emitter_burst(global.part_dash, global.em_dash, global.part_type_dash, 30);
	movendo();
	timer_roll--
	i_alpha = .6;
	if (!som_dash)
	{
		som_dash = audio_play_sound(snd_dash, 1, false);
	}
	estado_txt = "Rolando";
	vel_max = 8.5;
	if (timer_roll <= 0)
	{
		cor						= c_white;
		estado					= estado_parado;
		timer_roll				= tempo_roll;
		i_alpha					= 1;
		global.timer_delay_roll	= 0;
		som_dash				= false;
	}
}

estado = estado_parado;



