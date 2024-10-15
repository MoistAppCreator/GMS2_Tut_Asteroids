function scr_game_stages(_game_stage = 0, _layer_string = "", _obj = undefined){
	
	if(_game_stage <= 0 or _layer_string == "" or _obj == undefined){
		return
	}
		
	//return enemy obj, number of enemy,spawn shield bool?, spawn ship bool?

	for (var i = 0; i < _game_stage * 2; i += 1)
	{
		_x = choose(-100, 1100) * 1;
		_y = random_range(-100, 1100) * 1;
		
		instance_create_layer(_x, _y, _layer_string, _obj);
	}
	
}