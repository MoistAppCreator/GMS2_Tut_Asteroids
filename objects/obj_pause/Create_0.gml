is_paused					= false;
sprite_index				= noone;
button_array				= [obj_button_unpause, obj_button_mainmenu];
first_button_location_x		= 500;
first_button_location_y		= 400;
current_button_array		= [noone, noone];

function pause_toggle(){
	if(is_paused == true){
		is_paused = false;
		sprite_index = noone;
		for(var _i = 0; _i< array_length(current_button_array); _i += 1){
			if(current_button_array[_i] == noone){
				continue;
			}
			instance_destroy(current_button_array[_i])
		}
	}else{
		is_paused = true;
		sprite_index = background_sprite;
		for(var _i = 0; _i < array_length(button_array); _i += 1){
			_temp_instance = instance_create_layer(first_button_location_x, first_button_location_y + (_i * 150), submenu_layer, button_array[_i]);
			current_button_array[_i]  = _temp_instance;
			_temp_instance.image_xscale = 5;
			_temp_instance.image_yscale = 5;

		}
	}
}