cursor_sprite = spr_crosshair_main


audio_group_load(Fx);
global.fxvolume = 0.1;
audio_group_set_gain(Fx, global.fxvolume, 1);
audio_group_load(Music);
global.musicvolume = 0.1;
audio_group_set_gain(Music, global.musicvolume, 1);

function play_sound(_sound){
	
	
}
function play_music(){
	track = sndTrack1;
	track = choose(sndTrack1, sndTrack2);
	audio_play_sound(track, 10, true);	
}