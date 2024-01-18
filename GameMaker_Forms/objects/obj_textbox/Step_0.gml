// Handle cursor blinking
cursor_timer += 1;
if (cursor_timer > 30) { // Adjust the blinking speed as needed
    cursor_visible = !cursor_visible;
    cursor_timer = 0;
}

var key = keyboard_check_pressed(vk_anykey);

if (key != 0) {
    // If a key is pressed, add it to the input string
    //keyboard_string += chr(key); // NOTE: THIS SEEMS TO BE HANDLED AUTOMATICALLY BY KEYBOARD_STRING
	cursor_visible = true; // Show cursor when typing
}

// Handle backspace
if (keyboard_check_pressed(vk_backspace)) {
    if (string_length(keyboard_string) > 0) {
        keyboard_string = string_delete(keyboard_string, string_length(keyboard_string), 1);
		cursor_visible = true; // Show cursor when deleting
    }
}

// Limit text width to the sprite width
if (string_width(keyboard_string) > sprite_width) {
    while (string_width(keyboard_string) > sprite_width) {
        // Remove characters from the end until the width is within limits
        keyboard_string = string_delete(keyboard_string, string_length(keyboard_string), 1);
    }
}


