/// @description 
draw_self();
draw_set_alpha(scr_wave(0.05,0.5,4,4))
draw_sprite_ext(spr_battle_stage_grid,image_index,x,y,self.image_xscale,self.image_yscale,image_angle,c_white,scr_wave(0.05,0.3,4,3))
draw_set_alpha(1);