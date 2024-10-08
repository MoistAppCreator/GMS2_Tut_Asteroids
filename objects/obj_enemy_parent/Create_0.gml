speed				= enemy_speed
image_xscale		= 0.5;
image_yscale		= 0.5;
direction			= random(360);
image_angle			= direction;

enemy_destroyed= false;


function destroy_enemy(_player_touched = false){
	if enemy_destroyed{
		return;
	}
	
	
	enemy_destroyed = true;
	instance_create_layer(x, y, "Particles", obj_enemy_explode_particle)
	
	if(_player_touched){
		instance_destroy(other);
	}


	direction = random(360);
	image_angle = image_angle;
	sprite_index = destroyed_sprite;
	obj_game.points += 50;
}