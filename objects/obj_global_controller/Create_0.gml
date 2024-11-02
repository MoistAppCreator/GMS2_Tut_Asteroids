cursor_sprite = spr_crosshair_main

global.fxvolume = 1;
global.musicvolume = 1;
audio_master_gain(0.1);

function play_sound(_sound){
	
	
}
function play_music(){
	track = sndTrack1;
	track = choose(sndTrack1, sndTrack2);
	audio_play_sound(track, 10, true);	
}