/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_health);

draw_self();

if (alive)
{
	draw_text(x-10,y - 70, hp);
	draw_healthbar(x - 50, y + 50, x + 50, y + 45, hp , c_black, c_red, c_green, 1, true, true);
	
}
