function scr_get_nearest_enemy(player){
    // Get the layer ID for the "Enemies" layer
    var layer_id = layer_get_id("Enemies");
    
    // Find the nearest instance of "obj_enemy_parent" on the "Enemies" layer
    var nearest_enemy = noone;  // Initialize the variable to store the nearest enemy instance
    var nearest_distance = -1;  // Distance initialized to -1 to indicate no enemy found yet
    
    // Loop through all instances of "obj_enemy_parent"
    with (obj_enemy_parent) {
        // Check if the instance is on the correct layer
        if (layer == layer_id) {
            var dist = point_distance(player.x, player.y, x, y);
            
            // Update nearest_enemy if this instance is closer
            if (nearest_distance == -1 || dist < nearest_distance) {
                nearest_distance = dist;
                nearest_enemy = id;
            }
        }
    }
    
    return nearest_enemy;  // Return the nearest enemy instance (or noone if none found)
}
