/// @description Insert description here
// You can write your code in this editor
if (alive )
{
	hp += 15;
	global.score += 15;  // Increase score by 10 for each hit
	
	if (hp<= 0)
	{
// Collision Event with obj_projectile or similar in obj_target

		alive = false;
	}
	
	with(other)
	{
		instance_destroy();
	}
}