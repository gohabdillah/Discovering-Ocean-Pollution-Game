/// @description Insert description here
// You can write your code in this editor


if (alive)
{
	hp -= 50;
// Collision Event with obj_projectile or similar in obj_target
	global.score -= 30;  // Increase score by 10 for each hit

	
	if (hp<= 0)
	{
		alive = false;
		
	}
	
	with(other)
	{
		instance_destroy();
	}
}