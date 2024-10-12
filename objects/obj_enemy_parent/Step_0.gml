move_wrap(true,true,100)

var _image_angle_update = image_angle + 1;

if(follow_player){
		_image_angle_update = point_direction(x, y, obj_player.x, obj_player.y);
}

image_angle = _image_angle_update;