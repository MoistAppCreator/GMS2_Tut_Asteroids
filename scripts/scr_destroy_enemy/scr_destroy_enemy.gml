function scr_destroy_enemy(_player_touched = false, _enemy_instance = noone){
	
	if (_enemy_instance == noone){
		return;	
	}
	
	if _enemy_instance.enemy_destroyed{
		return;
	}
	
	if _enemy_instance.enemy_shield{
		instance_destroy(_enemy_instance.enemy_shield_obj);
		 _enemy_instance.enemy_shield = false;
		 return;
	}
	
	_enemy_instance.enemy_destroyed = true;
	instance_create_layer(_enemy_instance.x, _enemy_instance.y, "Particles", obj_enemy_explode_particle)
	
	//if(_player_touched){
	//	instance_destroy(_enemy_instance);
	//}


	_enemy_instance.direction = random(360);
	_enemy_instance.image_angle = _enemy_instance.direction;
	_enemy_instance.sprite_index = _enemy_instance.destroyed_sprite;
	obj_game.points += 50;
}