/// @description Insert description here
// You can write your code in this editor

draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fnt_scoreboard)
draw_set_color(c_red);

draw_text_transformed(x, y, "SCORE: " + string(round(global.pontos)), 2, 2, 0);

draw_set_color(-1);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);