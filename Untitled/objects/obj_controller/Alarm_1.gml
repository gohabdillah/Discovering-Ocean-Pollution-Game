/// @description Insert description here
// You can write your code in this editor
// Create Event of obj_spawner
// Alarm[0] Event of obj_spawner
var new_x = random(room_width);  // Generate a random x position within the room
var new_y = random(room_height);  // Generate a random y position within the room
 // Create the sprite at random position
instance_create_layer(new_x, new_y, "Instances", obj_food_fish);

// Reset the alarm for continuous spawning
alarm[1] = 5 * room_speed;