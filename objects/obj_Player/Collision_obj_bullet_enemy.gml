
player_hp -= 1;

instance_destroy(player_shield_obj);
player_shield_obj = noone;

if (player_hp<=0){
	instance_create_layer(x, y, "Player", obj_explode_particle)
	obj_game.is_gameover = true
	obj_game.alarm[0] = obj_game.game_restart_timeout;
	audio_stop_sound(obj_game.track);
	var _losetrack = sndTrack1_Lose;
	_losetrack = choose(sndTrack1_Lose, sndTrack2_Lose);
	audio_play_sound(_losetrack, 10, false);
	audio_play_sound(snd_PlayerExplo, 1, false);
	instance_destroy();
}
