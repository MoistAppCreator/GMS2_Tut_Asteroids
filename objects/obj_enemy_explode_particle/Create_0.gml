ps_array = part_system_create_layer("Particles",false, ps_explode_1)
part_system_position(ps_array,x,y)

audio_play_sound(snd_EnemyExplo, 1, false);
obj_game.alarm[11] = 10