move_speed			= move_speed_base + (obj_game.player_level * move_speed_base * 0.1);
is_boosting			= false;
is_mouse_boosting	= false;
boost_timer			= 2;
is_shooting			= false;
turn_speed_normal	= turn_speed_base + (obj_game.player_level * turn_speed_base * 0.1);
turn_speed_shooting = turn_speed_shooting_base + (obj_game.player_level * turn_speed_shooting_base * 0.1);
turn_tolerance		= 20;
shoot_speed			= shoot_speed_base - (obj_game.player_level * shoot_speed_base * 0.1);
//gun_offset_x		= 50
//gun_offset_y		= -50

sprite_index		= main_sprite

image_xscale		= 0.5;
image_yscale		= 0.5;


player_shield_obj	= noone;
player_hp			= 1;

instance_create_layer(x, y, "Particles", obj_spawn_in_particle);

function inverse_relation(input) {
    var min_input = 10;
    var max_input = 120;
    var min_output = 15;   // Minimum output when input is highest
    var max_output = 50;  // Maximum output when input is lowest
    
    var output = max_output - ((input - min_input) / (max_input - min_input)) * (max_output - min_output);
    
    return output;
}

function set_sprite_fps(desired_fps) {
    var sprite_fps = sprite_get_speed(sprite_index);
    image_speed = desired_fps / sprite_fps;
}

set_sprite_fps(inverse_relation(shoot_speed));