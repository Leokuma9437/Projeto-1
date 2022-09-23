// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_funcoes(){

}

#region Variaveis Globais
global.stamina			= 100;
global.level			= 1;
global.pontos			= 1;
global.debug			= false;
global.aumx				= 0;
global.aumy				= 0;
global.cansasso			= 0;
global.posso_usar_o_r	= false;
global.se_achando		= true;
global.part_dash		= part_system_create();
#endregion

// Sistema de particulas
global.pegadas = part_system_create();
aplica_pegadas = part_emitter_create(global.pegadas);
