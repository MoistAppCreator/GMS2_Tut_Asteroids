function scr_get_nearest_enemy(player){
	// Find the layer ID of the "Enemies" layer
    var layer_id = layer_get_id("Enemies");
    
    // Get all instances on the "Enemies" layer
    var enemy_list = instance_place_layer(layer_id);
    
    // Create an array to store enemies and their distances
    var enemies = [];
    
    // Iterate over each enemy instance and calculate its distance to the player
    for (var i = 0; i < array_length(enemy_list); i++) {
        var enemy = enemy_list[i];
        
        // Calculate the distance from player to the enemy
        var distance = point_distance(player.x, player.y, enemy.x, enemy.y);
        
        // Store the enemy and its distance in a struct
        array_push(enemies, { instance: enemy, dist: distance });
    }
    
    // Sort the array by distance
    array_sort(enemies, function(a, b) {
        return a.dist - b.dist;
    });

    // Extract only the instances in sorted order
    var sorted_instances = [];
    for (var j = 0; j < array_length(enemies); j++) {
        array_push(sorted_instances, enemies[j].instance);
    }
    
    return sorted_instances;
}
