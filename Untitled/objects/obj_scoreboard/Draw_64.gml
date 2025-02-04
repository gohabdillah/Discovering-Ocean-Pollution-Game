/// @description Insert description here
// You can write your code in this editor
// Draw GUI Event
draw_set_font(fnt_scoreboard);  // Use the font you created for scores

draw_set_halign(fa_left);  // Center align the text
draw_set_valign(fa_top);  // Middle align the text
// Text coordinates
var text_x = x;
var text_y = y;
var outline_color = c_black;
var text_color = #ffffff;
var scoreText = string(global.score);


var outline_thickness = 70; // Adjust thickness as needed

// Draw black outline
for (var xx = -outline_thickness; xx <= outline_thickness; xx++) {
    for (var yy = -outline_thickness; yy <= outline_thickness; yy++) {
        if (xx != 0 || yy != 0) {  // This condition prevents the main text color from being drawn here
            draw_set_color(outline_color);
			draw_text(display_x, display_y, "Score: " + scoreText);
            
        }
    }
}


draw_set_color(text_color);  // Set the color
draw_text(display_x, display_y, "Score: " + scoreText);
