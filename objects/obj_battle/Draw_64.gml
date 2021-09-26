/// @description DRaw health and test vars

//draw_set_halign(fa_left);
//draw_set_valign(fa_top);
draw_set_font(fnt_game);
//draw_text(10,10,display_get_gui_height()); 768
//draw_text(10,30,display_get_gui_width()); 1024
//draw_text(10,50,obj_player.x)
//draw_text(10,70,obj_player.y)
draw_set_alpha(0.75)
//set alpha for health bar
draw_healthbar(30,30,210,55,(global.my_health/global.my_max_health)*100,c_red,c_black,c_lime,0,true,true);
//draw bar
draw_set_alpha(1);//reset alpha
draw_text(40,33,"Health: " + string(global.my_health) + "/"+ string(global.my_max_health))//display health text
