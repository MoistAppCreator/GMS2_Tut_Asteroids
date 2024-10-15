game_wave_clear		= 10000;
player_level		= 0;

points				= 0;
is_gameover			= false;



var _spawned_player	= instance_create_layer(500, 500, "Player", light_ship_obj);

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