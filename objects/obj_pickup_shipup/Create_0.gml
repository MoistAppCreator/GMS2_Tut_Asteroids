speed				= 1;
image_xscale		= 0.5;
image_yscale		= 0.5;

if(!obj_game.is_gameover){
	direction = point_direction(x, y, obj_player.x, obj_player.y);
}else{
	direction = random(360);
}

instance_create_layer(x, y, "Particles", obj_spawn_in_particle);