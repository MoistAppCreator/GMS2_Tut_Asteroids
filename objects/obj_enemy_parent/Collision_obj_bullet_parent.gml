if(enemy_destroyed) return;

if(!other.pass_thru_enemy){
	instance_destroy(other);
}

scr_destroy_enemy(false, self);