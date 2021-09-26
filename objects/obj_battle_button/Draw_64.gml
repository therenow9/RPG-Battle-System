/// @description draw battle selection box
draw_self();
draw_set_color(c_white)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_game);
draw_text(x+25,y-50,my_purpose);//Draw text on box ex force

//draw icon over textbox
	//if (selected=true)
	//{
	//	my_hover.image_alpha=1;
	//	my_hover.image_speed=1;
	//}else {
	//	my_hover.image_speed=0
	//	my_hover.image_index=0;
	//	my_hover.image_alpha=0.5;
	//}
