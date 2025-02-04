// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_reset_fish(){

randomize();
x = irandom_range(0, room_width); 
y=  irandom_range(0, room_height);

hp=100;
image_xscale =1;
image_yscale =1;
alive= true;
layer = layer_get_id("Instances");
}