/// @description menu and stuff
//audio_sound_pitch(snd_battle_menu,choose(0.8,0.9,1,1.1,1.2))
if (global.my_turn=true)
{//allow menu movement but not player movement
	obj_player.can_move=false
if keyboard_check_pressed(ord("A"))
{
	my_selection-=1
	if(!audio_is_playing(snd_battle_menu))
	{
		audio_play_sound(snd_battle_menu,1,false)
		
	}
}
if keyboard_check_pressed(ord("D"))
{
	my_selection+=1
	if(!audio_is_playing(snd_battle_menu))
	{
		audio_play_sound(snd_battle_menu,1,false)
	}
}
if (my_selection>4)
{
	my_selection=1
}
if (my_selection<1)
{
	my_selection=4
}
//make menu selction work
switch (my_selection)
{//make menu pointers flash and shit
	case 1:
	inst_battle_button_force.selected=true
	inst_battle_button_defend.selected=false
	inst_battle_button_magic.selected=false
	inst_battle_button_run.selected=false
	break;
	case 2:
	inst_battle_button_force.selected=false
	inst_battle_button_defend.selected=true
	inst_battle_button_magic.selected=false
	inst_battle_button_run.selected=false
	break;
	case 3:
	inst_battle_button_force.selected=false
	inst_battle_button_defend.selected=false
	inst_battle_button_magic.selected=true
	inst_battle_button_run.selected=false
	break;
	case 4:
	inst_battle_button_force.selected=false
	inst_battle_button_defend.selected=false
	inst_battle_button_magic.selected=false
	inst_battle_button_run.selected=true
	break;
	}
}else {
	obj_player.can_move=true
	inst_battle_button_force.selected=false
	inst_battle_button_defend.selected=false
	inst_battle_button_magic.selected=false
	inst_battle_button_run.selected=false
}
