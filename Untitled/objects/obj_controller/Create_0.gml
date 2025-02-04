/// @description Insert description here
// You can write your code in this editor
// Parameters
var num_enemies = 2; // Number of enemies to spawn
var num_weakfood = 5;
var num_goodfood = 3;

// Create Event of obj_spawner
alarm[0] = 5 * room_speed; // Every 10 seconds for obj_trash
alarm[1] = 5 * room_speed;  // Every 5 seconds for obj_food_fish
alarm[2] = 6 * room_speed;  // Every 3 seconds for obj_fish // Spawns every 2 seconds



// Create Event of obj_game_controller
global.score = 0;  // Initialize score


// Helper function to create objects at free positions
function create_object_at_free_position(obj, num_instances) {
    for (var i = 0; i < num_instances; i++) {
        var placed = false;
        var attempts = 0;  // To avoid infinite loops
        while (!placed && attempts < 100) {  // Limit the attempts to find a free place
            var random_x = random(room_width);  // Generate a random X coordinate within the room
            var random_y = random(room_height); // Generate a random Y coordinate within the room
            
            if (place_free(random_x, random_y)) {
                instance_create_depth(random_x, random_y, 0, obj);
                placed = true;
            }
            attempts++;
        }
        if (!placed) {
            show_debug_message("Failed to place an object after 100 attempts: " + string(obj));
        }
    }
}

// Create enemies, weak food, and good food at random free positions
create_object_at_free_position(obj_trash, num_enemies);
create_object_at_free_position(obj_food_fish, num_weakfood);
create_object_at_free_position(obj_food_healthy, num_goodfood);