if(other.player_hp >= 2){return;}

other.player_shield_obj = scr_pickup_shield(other);
other.player_hp = 2;

obj_game.points += 250;

instance_destroy();