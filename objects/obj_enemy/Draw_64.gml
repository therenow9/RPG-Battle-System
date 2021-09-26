/// @description //Draw enemy health bar
scr_draw_text(fa_middle,fa_top,fnt_hpbox);
draw_set_alpha(0.75);
//set alpha for health bar
draw_healthbar(x-(sprite_width/2),y+(sprite_width/2)+15,x+(sprite_width/2),y+(sprite_width/2)+35,(enemy_health/enemy_max_health)*100,c_red,c_black,c_purple,0,true,true);
//draw bar
draw_set_alpha(1);//reset alpha
draw_text(x,y+(sprite_width/2)+17, string(enemy_health) + "/"+ string(enemy_max_health))//display health text

