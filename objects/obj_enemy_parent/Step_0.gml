move_wrap(true,true,100)

if(obj_game.is_gameover){return;}

var _image_angle_update = image_angle + 1;

if(follow_player and !enemy_destroyed){
	motion_add(image_angle, enemy_speed/100);
	_image_angle_update = point_direction(x, y, obj_player.x, obj_player.y);
}

image_angle = _image_angle_update;