/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(alive)
{

	var pointdir = point_direction(x,y,targetX, targetY);
	image_angle += sin(degtorad(pointdir - image_angle))* rotationSpeed;
	direction = image_angle;

} 


if(hp<=0)
{
	room_goto(screen_dead);
}