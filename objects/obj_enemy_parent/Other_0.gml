if enemy_destroyed
{
	instance_destroy();
}

if !random_at_edge{
	return;
}
direction	= random(360);
image_angle = direction;