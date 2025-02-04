/// @description Insert description here
// You can write your code in this editor
var anim = instance_create_layer(x, y, "Instances", obj_health_animation);

anim.x = x;
anim.y = y - sprite_get_height(spr_health_increase) / 2;

