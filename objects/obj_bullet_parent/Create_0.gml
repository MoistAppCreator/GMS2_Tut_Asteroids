image_xscale		= projectile_size;
image_yscale		= projectile_size;



direction			= obj_player.image_angle

if (!track_nearest_enemy){
	speed			= projectile_speed;
	return;
}

closest_enemy		= scr_get_nearest_enemy(self);