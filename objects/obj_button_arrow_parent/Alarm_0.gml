/// @desc button action
event_inherited();

switch arrow_target{
	case 0:
	//nothing
		break;
	case 1:
	//FxDown
		if(global.fxvolume > 0){global.fxvolume -= 0.1;}
		
		break;
	case 2:
	//FxUp
		if(global.fxvolume < 1){global.fxvolume += 0.1;}
		break;
	case 3:
	//MusDown
		if(global.musicvolume > 0){global.musicvolume -= 0.1;}
		
		break;
	case 4:
	//MusUp
		if(global.musicvolume < 1){global.musicvolume += 0.1;}
		break;
	default:
	//nothing
	
}

audio_group_set_gain(Music, global.musicvolume, 1);
audio_group_set_gain(Fx, global.fxvolume, 1);