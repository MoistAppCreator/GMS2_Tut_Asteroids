draw_self();

draw_set_font(fnt_menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _val = letter_array[current_array_pos];



draw_text_color(x,y, _val, c_white, c_white, c_white, c_white, 1);

draw_set_halign(fa_left);
draw_set_valign(fa_top);