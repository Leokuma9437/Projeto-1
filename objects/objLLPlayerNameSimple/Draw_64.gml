draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_red);
draw_set_font(fnt_leaderboards);

draw_text_transformed(412, 290, "TO RESET", 1, 1, 0);

draw_text(x + 0, y + -20,  + string("Player ID: "+string(LLPlayerID())));

if(enteringName == true)
{
	draw_text(x + 0, y + 10,  + string("Player Name:"+keyboard_string+"\nPress Enter to submit\nESC to cancel"));
}

else
{
	draw_text(x + 0, y + 20,  + string("Player Name: "+LLPlayerName()+"\nPress C TO CHANGE"));
}
draw_set_color(-1);
draw_set_font(-1);

draw_sprite_ext(spr_tecla_r, 0, 400, 320, 3, 3, 0, c_white, 1);
draw_sprite_ext(spr_tecla_c, 0, 400, 200, 3, 3, 0, c_white, 1);

draw_set_font(fnt_scoreboard);
draw_set_color(c_black);
draw_text_transformed(room_width - 400, 18, "SCORE: " + string(round(global.pontos)), 2.5, 2.5, 0);

draw_set_font(-1);
draw_set_color(c_white);