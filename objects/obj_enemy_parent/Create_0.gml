
image_xscale		= 0.5;
image_yscale		= 0.5;
direction			= random(360);
image_angle			= direction;

if(!follow_player){speed = enemy_speed;}

enemy_destroyed		= false;

enemy_shield_obj	= noone;

if(enemy_shield){
	enemy_shield_obj = scr_pickup_shield(self);
}