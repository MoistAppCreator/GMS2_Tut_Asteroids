cursor_sprite = spr_crosshair_main


audio_group_load(Fx);
global.fxvolume = 0.1;
audio_group_set_gain(Fx, global.fxvolume, 1);
audio_group_load(Music);
global.musicvolume = 0.1;
audio_group_set_gain(Music, global.musicvolume, 1);

selected_track = sndTrack1;
_losetrack = sndTrack1_Lose;


root = "highscores";
listener = FirebaseFirestore(root).Listener();
data = -1;
should_check_scores = true;
highscore_tobeat = 200;


sort_score = function(_a, _b){
	return _b.score - _a.score
}

function push_score(_pushed_score = 0){
	var _str = obj_game.highscore_name_constructor();
	var _doc = json_stringify(
		{
			name: _str,
			score: _pushed_score		
		}
	);
	FirebaseFirestore(root).Set(_doc);
	should_check_scores = true;
}



function play_sound(_sound){
	
	
}
function play_music(){
	audio_stop_sound(selected_track);
	audio_stop_sound(_losetrack);
	
	selected_track = choose(sndTrack1, sndTrack2);
	audio_play_sound(selected_track, 1, true);	
}

function play_endgame_music(){
	audio_stop_sound(selected_track);
	
	_losetrack = choose(sndTrack1_Lose, sndTrack2_Lose);
	audio_play_sound(_losetrack, 10, false);
}