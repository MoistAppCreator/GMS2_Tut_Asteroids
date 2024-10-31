enum PlayerShipVersion{
	LIGHT,
	MED,
	HEAVY
}


function scr_player_upgrade(_posx,_posy){
	
	audio_play_sound(snd_Upgrade, 1, false);
	
	var _old_player_hspeed = obj_player.hspeed;
	var _old_player_vspeed = obj_player.vspeed;
	var _old_player_enum = obj_player.ident_enum;
	var _old_player_shield = obj_player.player_shield_obj;
	
	instance_destroy(obj_player);
	
	switch(_old_player_enum){
		case 0:
			instance_create_layer(_posx, _posy, "Player", obj_game.medium_ship_obj);
		break;
		
		case 1:
			instance_create_layer(_posx, _posy, "Player", obj_game.heavy_ship_obj);
		break;
		
		case 2:
			instance_create_layer(_posx, _posy, "Player", obj_game.light_ship_obj);
			obj_game.player_level += 1;
			instance_create_layer(_posx, _posy, "Particles", obj_score_bubble_shipup);
		break;
		
		default:
			instance_create_layer(_posx, _posy, "Player", obj_game.light_ship_obj);
		break;
	}
	
	obj_player.hspeed = _old_player_hspeed;
	obj_player.vspeed = _old_player_vspeed;
	obj_player.player_shield_obj = _old_player_shield;
	
	if (_old_player_shield != noone) {
		_old_player_shield.assigned_obj = obj_player;
		obj_player.player_hp = 2;
	}
}