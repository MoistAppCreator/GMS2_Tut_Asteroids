function scr_array_fix(_stage_number = 0){
	// Convert the number to a string to access each digit
	var num_string = string(_stage_number);

	// Create an empty array
	var digit_array = [];

	// Loop through the string in reverse to store digits in reverse order
	for (var i = 0; i < string_length(num_string); i++) {
	    // Convert each character back to a number and store in the array
	    digit_array[i] = real(string_char_at(num_string, string_length(num_string) - i));
	}


	return digit_array;
}