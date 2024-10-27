image_xscale		= projectile_size;
image_yscale		= projectile_size;

speed				= projectile_speed;

direction			= obj_player.image_angle

if (!track_nearest_enemy){return;}
// Call the function to get the sorted array of enemies
nearest_enemies = scr_get_nearest_enemy(obj_player);
closest_enemy = noone;

// Loop through the sorted array of enemies
for (var i = 0; i < array_length(nearest_enemies); i++) {
    var enemy = nearest_enemies[i];
    
    // Check if the enemy has the "enemy_destroyed" boolean set to true
    if (enemy.enemy_destroyed) {
        // Save this enemy to closest_enemy and break the loop
        closest_enemy = enemy;
        break;
    }
}
