draw_self();

draw_set_font(fnt_menu);

draw_set_halign(fa_left);
draw_set_valign(fa_top);


if (obj_global_controller.data == -1){
	draw_text_color(x,y, "Loading...", c_white, c_white, c_white, c_white, 1);
}else{
	for (var _i = 0; _i < 5; _i++;){
		var _doc = obj_global_controller.data[_i];
		draw_text_color(x,y + (100 * _i), $"{_doc.name}: ", c_white, c_white, c_white, c_white, 1);
		draw_text_color(x,y + (100 * _i) + 45, $" {_doc.score}", c_white, c_white, c_white, c_white, 1);
	}
}








draw_set_halign(fa_left);
draw_set_valign(fa_top);