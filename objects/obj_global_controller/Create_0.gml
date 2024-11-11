cursor_sprite = spr_crosshair_main


audio_group_load(Fx);
global.fxvolume = 0.1;
audio_group_set_gain(Fx, global.fxvolume, 1);
audio_group_load(Music);
global.musicvolume = 0.1;
audio_group_set_gain(Music, global.musicvolume, 1);

selected_track = sndTrack1;

function play_sound(_sound){
	
	
}
function play_music(){
	audio_stop_sound(selected_track);
	selected_track = choose(sndTrack1, sndTrack2);
	audio_play_sound(selected_track, 10, true);	
}