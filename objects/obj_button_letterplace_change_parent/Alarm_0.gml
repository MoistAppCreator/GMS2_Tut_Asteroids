sprite_index = starting_sprite;

letterplace_pos.current_array_pos += change_direction;

if(letterplace_pos.current_array_pos < 0){
	letterplace_pos.current_array_pos = array_length(letterplace_pos.letter_array) - 1;
}
if(letterplace_pos.current_array_pos >= array_length(letterplace_pos.letter_array)){
	letterplace_pos.current_array_pos = 0;
}

letterplace_pos.chosen_letter = letterplace_pos.letter_array[letterplace_pos.current_array_pos];