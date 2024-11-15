/// @description confirm name

event_inherited();
obj_global_controller.highscore_tobeat = int64(obj_game.points);
obj_global_controller.push_score(obj_game.points);
room_restart();