/// @description do hover over selections and apply multipliers for each turn
position_y_selected=scr_wave(y-20,y-50,1.2,2)//hover effect for sword and stuff
position_y_not_selected=y-50
	if (selected=true)
	{
		if (keyboard_check(vk_enter))//choosemenu
		{
			switch (id)//apply multiplier depending on selection
			{
				case defend:
					global.mult_defense=1.5
					break;
				case magic:
					global.mult_magic=1.5
					global.magic_hands=true;
					break;
				case run:
					global.mult_run=1.5
					break;
				case force:
					global.mult_attack=1.5
					global.sword_time=true;
					break;
			}
			obj_enemy.choice=irandom_range(0,obj_enemy.last_choice)
			//have varying dialogue
			global.turn_counter+=1;
			obj_enemy.choice=(irandom_range(1,obj_enemy.my_last_attack))
			global.my_turn=false;
			obj_battle.alarm[0]=7*room_speed;//allow movement on grid and turn off menu for amount of seconds until alarm goes off
		}
		//activate animation over each selection
		my_pointer.y=position_y_selected
		image_speed=1
		my_pointer.image_speed=1;
		my_pointer.image_alpha=1;
	}else {
		//dim alphas and stop animation for non selected battle boxes
		my_pointer.y=position_y_not_selected
		image_speed=0
		image_index=0;
		my_pointer.image_speed=0;
		my_pointer.image_alpha=0.25;
		my_pointer.image_index=0;
	}
my_pointer.sprite_index=my_hover