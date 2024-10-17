enum PlayerShipVersion{
	LIGHT,
	MED,
	HEAVY
}


function scr_player_upgrade(_posx,_posy){
	
	var _old_player_enum = obj_player.ident_enum
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
		break;
		
		default:
			instance_create_layer(_posx, _posy, "Player", obj_game.light_ship_obj);
		break;
	}
}