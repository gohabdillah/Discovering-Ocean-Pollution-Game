// Draw GUI Event of obj_controller
var scoreText = "Score: " + string(global.score);  // Initialize scoreText at the beginning
var outline_color = c_black;  // Define the outline color
var outline_thickness = 2;  // Adjust thickness as needed
var text_x = 10;  // X position for the text
var text_y = 10;  // Y position for the text

// Check if the font exists
if (font_exists(fnt_score)) {
    draw_set_font(fnt_score);  // Set to the specific font
} else {
    // Optionally set a default font if fnt_score doesn't exist
    draw_set_font(font_default);
}

// Set alignment for the text
draw_set_halign(fa_left);  // Align text left
draw_set_valign(fa_top);  // Align text top

// Draw black outline
for (var xx = -outline_thickness; xx <= outline_thickness; xx++) {
    for (var yy = -outline_thickness; yy <= outline_thickness; yy++) {
        if (xx != 0 || yy != 0) {  // This condition prevents the main text color from being drawn here
            draw_set_color(outline_color);
            draw_text(text_x + xx, text_y + yy, scoreText);
        }
    }
}

// Draw main text on top
draw_set_color(c_orange);  // Set text color for the main text
draw_text(text_x, text_y, scoreText);  // Draw score at the specified position
