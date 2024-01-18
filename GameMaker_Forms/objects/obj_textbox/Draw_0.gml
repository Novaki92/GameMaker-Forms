draw_self(); // Draw the object itself

// Calculate vertical position to center the text
var text_height = string_height(keyboard_string);
//var text_width = string_width(keyboard_string);
var y_centered = y + (sprite_height - text_height) / 2;

// Draw the text
draw_set_font(fnt_textbox);
draw_set_color(c_black);
draw_text(x, y_centered, keyboard_string);

// Draw cursor if it's visible
if (cursor_visible) {
    var cursor_x = x + string_width(string_copy(keyboard_string, 1, string_length(keyboard_string)));
    draw_line(cursor_x, y_centered - 2, cursor_x, y_centered + text_height + 2);
}
