//change player ship


scr_player_upgrade(other.x, other.y);

obj_game.points += 250;
instance_create_layer(x, y, "Particles", obj_score_bubble_250);
instance_destroy();