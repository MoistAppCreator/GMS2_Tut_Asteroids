draw_self();

draw_set_font(fnt_menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(is_mouse_over){
	draw_text_color(x,y,button_text, c_black, c_black, c_black, c_black, 0.6);
}else{
	draw_text_color(x,y,button_text, c_black, c_black, c_black, c_black, 1);
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);