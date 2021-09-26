/// @description draw test variables for stats

scr_draw_text(fa_left,fa_top,fnt_game);
//set draw
draw_text(300,10,"Run:"+string(obj_player.spd))
draw_text(300,30,"Atck:"+string(global.my_attack))
draw_text(300,50,"Dfense:"+string(global.my_defense))
draw_text(300,70,"Mgic:"+string(global.my_magic))
//draw stats to screen for debugging