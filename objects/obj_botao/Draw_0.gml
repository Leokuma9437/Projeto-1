/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_halign(1);
draw_set_valign(1);
draw_set_color(c_black);
draw_text_color(x, y, texto, c_black, c_black, c_black, c_black, 1);
draw_text(120, 290, "MOVE");
draw_text(500, 290, "DASH");
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_color(c_white);

draw_sprite(spr_teclasWASD, 0, 20 , 280);
draw_sprite(spr_teclas_setinhas, 0, 120, 280);
draw_sprite(spr_tecla_espaco, 0, 410, 249);
