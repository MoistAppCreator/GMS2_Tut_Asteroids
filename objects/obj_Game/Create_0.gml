game_wave_clear		= 0;

points				= 0;
is_gameover			= false;

enemies_layer		= layer_get_id("Enemies");

var _spawned_player	= instance_create_layer(500, 500, "Player", light_ship_obj);
