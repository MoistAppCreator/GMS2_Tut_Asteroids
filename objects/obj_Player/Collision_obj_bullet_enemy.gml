
player_hp -= 1;

instance_destroy(player_shield_obj);
player_shield_obj = noone;

if (player_hp<=0){
	audio_stop_sound(snd_PlayerEngine);
	instance_create_layer(x, y, "Player", obj_explode_particle)
	obj_game.game_over();
	obj_global_controller.play_endgame_music();
	audio_play_sound(snd_PlayerExplo, 1, false);
	instance_destroy();
}
