draw_self();

draw_set_font(fnt_menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _val = $"Round: {obj_game.game_wave_clear + 1}";

draw_text_color(x,y, _val, c_white, c_white, c_white, c_white, text_alpha);