draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(c_black);
draw_set_font(fnt_leaderboards);

draw_text(x + 0, y + 0, string("Highscores Top\n") + string(LLHighscoresTopFormatted()));

draw_set_halign(-1);
draw_set_valign(-1);

draw_set_color(c_white);
draw_set_font(-1)