if(obj_game.is_gameover){
	return;	
}
if(keyboard_check_pressed(vk_escape)){
	pause_toggle();
}
if mouse_check_button(mb_middle) and !is_paused{
	pause_toggle();
}
