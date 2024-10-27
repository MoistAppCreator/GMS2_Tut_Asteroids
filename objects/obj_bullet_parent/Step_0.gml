if(track_nearest_enemy and closest_enemy != noone){
	image_angle = point_direction(x, y, closest_enemy.x, closest_enemy.y);
	motion_add(image_angle, projectile_speed/100);
}