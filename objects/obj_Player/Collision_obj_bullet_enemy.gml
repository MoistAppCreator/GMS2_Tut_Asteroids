
player_hp -= 1;

instance_destroy(player_shield_obj);


if (player_hp<=0){
	instance_create_layer(x, y, "Player", obj_explode_particle)
	obj_game.is_gameover = true
	obj_game.alarm[0] = 120
	instance_destroy();
}
