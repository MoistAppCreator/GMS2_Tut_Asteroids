game_wave_clear		= 0;
player_level		= 0;

points				= 0;
is_gameover			= false;


obj_global_controller.play_music();

var _spawned_player	= instance_create_layer(500, 500, "Player", light_ship_obj);

alarm[1] = wave_timeout;

//enemies
enemies_layer		= layer_get_id("Enemies");
enemy_array			= [
					obj_enemy_0,
					obj_enemy_1,
					obj_enemy_2,
					obj_enemy_3,
					obj_enemy_4,
					obj_enemy_5,
					obj_enemy_6,
];

function new_wave(){
	if(is_gameover){return;}
	
	wave_timeout += 10;
	
	alarm[1] = wave_timeout;
	
	if(obj_pause.is_paused){return;}
	
	instance_create_layer(500, 500, "Particles", obj_roundnumber_bubble);
	
	game_wave_clear += 1;
	
	var _array = scr_array_fix(game_wave_clear);
	
	for (var i = 0; i < array_length(_array); i += 1)
	{
		scr_game_stages(_array[i], "Enemies", enemy_array[i]);
	}
	
	var _pickup_x = 0;
	var _pickup_y = 0;
	
	
	if(obj_player.player_hp <= 1){
	//spawn pickup
		if(random(1) < 0.3){
		    _pickup_x = choose(random_range(0, obj_player.x - 50),random_range(obj_player.x + 50, 1000));
			_pickup_y = choose(random_range(0, obj_player.y - 50),random_range(obj_player.y + 50, 1000));
			instance_create_layer(_pickup_x, _pickup_y, "Player", obj_pickup_shield);
		}
	}
	

	//spawn shipup
	if(random(1) < 0.1){
		_pickup_x = choose(random_range(0, obj_player.x - 50),random_range(obj_player.x + 50, 1000));
		_pickup_y = choose(random_range(0, obj_player.y - 50),random_range(obj_player.y + 50, 1000));
		instance_create_layer(_pickup_x, _pickup_y, "Player", obj_pickup_shipup);
	}
}

function game_over(){
	is_gameover = true
	audio_stop_sound(obj_global_controller.selected_track);
	if(points > obj_global_controller.highscore_tobeat){
		instance_activate_layer("Highscore_MenuItems");
		instance_activate_layer("Highscore_Buttons");

		return;
	}
	alarm[0] = game_restart_timeout;
}

function highscore_name_constructor(){
	var _string = string("{0}{1}{2}",obj_letterplace_0.chosen_letter,obj_letterplace_1.chosen_letter,obj_letterplace_2.chosen_letter);
	return _string;
}