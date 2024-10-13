function scr_pickup_shield(_shield_applied){
	var _shield_obj = instance_create_layer(_shield_applied.x, _shield_applied.y, _shield_applied.layer, obj_shield);
	_shield_obj.assigned_obj = _shield_applied;
	return _shield_obj;
}