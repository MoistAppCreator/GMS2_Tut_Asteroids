image_xscale		= projectile_size;
image_yscale		= projectile_size;

if(sound1 != noone){
	var _chosen_sound = snd_bullet1;
	_chosen_sound = choose(sound1,sound2,sound3);
	audio_play_sound(_chosen_sound, 10, false);
}


direction			= obj_player.image_angle

if (!track_nearest_enemy){
	speed			= projectile_speed;
	return;
}

closest_enemy		= scr_get_nearest_enemy(self);

