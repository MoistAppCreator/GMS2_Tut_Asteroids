if (array_length(layer_get_all_elements("Enemies")) < 1){
	game_wave_clear += 1;
	scr_game_stages(game_wave_clear);
}