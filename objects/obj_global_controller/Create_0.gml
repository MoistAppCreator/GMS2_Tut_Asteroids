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

sort_score = function(_a, _b){
	return _b.score - _a.score
}

function push_score(){
	var _doc = json_stringify(
		{
			name: get_string_async("Name: ",""),
			score: get_integer_async("Score: ", 0)
			
		}
	);
	FirebaseFirestore(root).Set(_doc);
}


//var json = json_stringify({ name: "Hero", level: 100 });
//listenerId = FirebaseFirestore("highscores/Eyz9mfLKZz9MFpfBtfIY").Set(json);

//listenerId = FirebaseFirestore("highscores/Eyz9mfLKZz9MFpfBtfIY").OrderBy("Points", "ASCENDING").Limit(10).WhereLessThan("Points", 50).Query();

highscore_tobeat = 200;

function play_sound(_sound){
	
	
}
function play_music(){
	audio_stop_sound(selected_track);
	selected_track = choose(sndTrack1, sndTrack2);
	audio_play_sound(selected_track, 10, true);	
}