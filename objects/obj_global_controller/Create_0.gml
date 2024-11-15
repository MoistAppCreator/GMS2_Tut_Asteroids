cursor_sprite = spr_crosshair_main


audio_group_load(Fx);
global.fxvolume = 0.1;
audio_group_set_gain(Fx, global.fxvolume, 1);
audio_group_load(Music);
global.musicvolume = 0.1;
audio_group_set_gain(Music, global.musicvolume, 1);

selected_track = sndTrack1;


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
	print("obj_global_controller",_str);
	
	//var _doc = json_stringify(
	//	{
	//		name: _str,
	//		score: _pushed_score		
	//	}
	//);
	//FirebaseFirestore(root).Set(_doc);
}



function play_sound(_sound){
	
	
}
function play_music(){
	audio_stop_sound(selected_track);
	selected_track = choose(sndTrack1, sndTrack2);
	audio_play_sound(selected_track, 10, true);	
}