/// @desc shoot alarm

var _bullet = instance_create_layer(x, y, "Enemies", obj_bullet_enemy);
_bullet.direction = image_angle;
_bullet.image_angle = image_angle;

alarm[0] = shoot_speed;