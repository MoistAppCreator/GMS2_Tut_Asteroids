if (array_length(layer_get_all_elements("Enemies")) < 1){
	game_wave_clear += 1;
	
	var _array = scr_array_fix(game_wave_clear);
	
	for (var i = 0; i < array_length(_array); i += 1)
	{
		scr_game_stages(_array[i], "Enemies", enemy_array[i]);
	}
}