if other.enemy_destroyed{
	return;
}

player_hp -= 1;

scr_destroy_enemy(true, other);


if (player_hp<=0){
	instance_create_layer(x, y, "Instances", obj_explode_particle)
	obj_game.is_gameover = true
	obj_game.alarm[0] = 120
	instance_destroy();
}
