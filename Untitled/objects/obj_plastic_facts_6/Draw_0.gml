// Draw Event
draw_self();

// Check if the text bubble should be displayed
if (showText) {
    // Setup for the text bubble
    var bubbleWidth = 0;
    var bubbleHeight = 0;
    var bubbleX = x - bubbleWidth / 2;
    var bubbleY = y - sprite_height - bubbleHeight - 10;

    // Draw the text bubble background
    draw_set_color(c_gray); // Color of the bubble background
    draw_rectangle(bubbleX, bubbleY, bubbleX + bubbleWidth, bubbleY + bubbleHeight, true);
    
    // Draw the text
    draw_set_color(c_white); // Color of the text
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    var textX = bubbleX + bubbleWidth / 2;
    var textY = bubbleY + bubbleHeight / 2;
    draw_text(textX, textY, text); // Corrected to include x, y positions
}
