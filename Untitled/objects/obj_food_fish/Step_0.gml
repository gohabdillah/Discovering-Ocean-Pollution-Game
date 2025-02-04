/// @description Insert description here
// You can write your code in this editor
// Step Event
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Optional: Prevent moving outside room bounds
x = clamp(x, 0, room_width - sprite_width);
y = clamp(y, 0, room_height - sprite_height);


