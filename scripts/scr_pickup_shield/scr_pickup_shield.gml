function scr_pickup_shield(_shield_applied){
	audio_play_sound(snd_Pickup, 1, false);
	var _shield_obj = instance_create_layer(_shield_applied.x, _shield_applied.y, "Particles", obj_shield);
	_shield_obj.assigned_obj = _shield_applied;
	return _shield_obj;
}