///scr_TextDisplay(string, xpos, ypos)

// Set variables to input
str = argument0;
xpos = argument1;
ypos = argument2;
cur_width = 0;
len = string_length(str); //Set the len variable to the length of the str variable
chars[len-1] = 0;
line = 0;
var i, j;

// For loop
for (i = len-1; i >= 0; i--) {
    chars[i] = string_char_at(str, i+1); // Character checking
}
    
draw_text(xpos, ypos, chars[0]); // Draw text
cur_width += string_width(chars[0]); // Add to witdh

// For loop
for (j = 1; j < chars_drawn; j++) {
    if (chars[j] == '#') { // Check if a character is "#"
        line += string_height(chars[j-1]); // Add to line
        cur_width = 0; // Reset width
    } else {
        draw_text(xpos + cur_width, ypos + line, chars[j]); // Draw text
        cur_width += string_width(chars[j]); // Add to width
    }
}
