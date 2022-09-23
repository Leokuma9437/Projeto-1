/// @description Insert description here
// You can write your code in this editor
next_level--;
if (instance_exists(obj_player))
{
	if (global.level == 1)
	{
		global.pontos += .02;
	}
	if (global.level == 2)
	{
		global.pontos += .04;
	}
	if (global.level == 3)
	{
		global.pontos += .09;
	}
}


timer_delay_cria_descanso--

// Debug, reiniciar o jogo
if (!global.posso_usar_o_r and keyboard_check_released(ord("R")))
{
	room_restart();
	LootLockerReset();
	global.stamina			= 100;
	global.level			= 1;
	global.pontos			= 1;
	global.debug			= false;
	global.aumx				= 0;
	global.aumy				= 0;
	global.cansasso			= 0;
	global.posso_usar_o_r	= false;
	audio_stop_all();
}

// Se o timer acabar ele cria um descanso
if (timer_delay_cria_descanso <= 0)
{
	cria_descanso();
	timer_delay_cria_descanso = delay_cria_descanso;
}

// Se o player não existe, ative o alarme 0
if (!instance_exists(obj_player))
{
	alarm[0] = 5;
}


// Se o desce alfinhas for true, ele começa a descer
if (desce_alfinhas and alfinha > 0 and alfinha2 > 0)
{
	alfinha  -= .01;
	alfinha2 -= .01;
}

if (alfinha2 <= .02 and desce_alfinhas)
{
	global.se_achando = false;
}


