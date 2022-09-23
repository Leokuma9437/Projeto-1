/// @description Insert description here
// You can write your code in this editor

// Desenhando o meu retangulo com o valor do meu alpha
draw_set_alpha(alpha)
draw_set_color(c_black);
var x2 = display_get_gui_width();	
var y2 = display_get_gui_height();
// Desenhando um retangulo preto na tela
draw_rectangle(0,0,x2,y2, false);

// Reset
draw_set_color(-1);
draw_set_alpha(1);
