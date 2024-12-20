var _dir = point_direction(x, y, mouse_x, mouse_y);
var _diff = angle_difference(_dir, image_angle);
if is_shooting{
	image_angle += _diff * turn_speed_shooting;
	sprite_index = shoot_sprite;
}else{
	image_angle += _diff * turn_speed_normal;
	if _diff > turn_tolerance or _diff < -turn_tolerance{
		sprite_index = turn_sprite;
		if _diff > 0{
			image_yscale *= 1;
		}
		if _diff < 0{
			image_yscale *= -1;
		}
	}else{
		sprite_index = main_sprite;
		image_yscale *= 1;
	}
}


move_wrap(true,true,100);

if mouse_check_button(mb_left){
	is_shooting = true;
	if alarm_get(0) <= 0{
		
		var _gunoffset = gun_offset_fromcenter * 1;
		
		var direction_gunpoint = image_angle + point_direction(0, 0, gun_offset_x, gun_offset_y);
		
		var _bullet_spawn_x = x + lengthdir_x(_gunoffset, direction_gunpoint);
			
		var _bullet_spawn_y = y + lengthdir_y(_gunoffset, direction_gunpoint);

		var _bullet = instance_create_layer(_bullet_spawn_x, _bullet_spawn_y, "Player", bullet_asset);
		
		if(use_gunpoint_asset){
			var _gunpoint = instance_create_layer(_bullet_spawn_x, _bullet_spawn_y, "Particles", gunpoint_asset);
			_gunpoint.image_angle = image_angle;
		}
		
		
		gun_offset_y = -gun_offset_y;
		
		_bullet.direction = image_angle;
		_bullet.image_angle = image_angle;

		alarm[0] = shoot_speed;
		
	}
}else{
	is_shooting = false;
}

if mouse_check_button(mb_right){
	is_mouse_boosting = true;
}else{
	is_mouse_boosting = false;
}

if is_boosting or is_mouse_boosting{
	audio_play_sound(snd_PlayerEngine, 10, true);
	motion_add(image_angle, move_speed);
	if alarm_get(1) <= 0{
		var _booster_flame = instance_create_layer(x, y, "Player", obj_booster_particle);
		_booster_flame.direction = image_angle+(180* random_range(0.9,1));
		_booster_flame.image_angle = image_angle + 180;
		alarm[1] = boost_timer;
	}
}else{
	audio_stop_sound(snd_PlayerEngine);
}