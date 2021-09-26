/// @description start turn counter and initilialize hover sprites
global.turn_counter=1;//keep track of turns
var my_purpose;
selected=false;
position_y_selected=scr_wave(y-20,y-50,1.2,2)
position_y_not_selected=y-50
my_pointer=instance_create_depth(x+10,y,layer_get_depth("inst_battle")-1,obj_hover);
//create hovering icons
global.magic_hands=false;
global.sword_time=false;
