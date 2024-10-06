draw_self();
	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

if(is_paused){
	instance_deactivate_layer("Particles");
	instance_deactivate_layer("Assets_1");
	instance_deactivate_layer("Instances");

	draw_text_color(x,y, "Paused", c_black, c_black, c_black, c_black, 1);
}else{
	draw_text_color(x,y, "", c_black, c_black, c_black, c_black, 1);

	instance_activate_all();
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);