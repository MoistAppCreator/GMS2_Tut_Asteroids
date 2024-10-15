//change player ship
obj_game.player_level += 1;
obj_game.points += 250;

scr_player_upgrade(other.x, other.y);

instance_destroy();