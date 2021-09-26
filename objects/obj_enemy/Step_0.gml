/// @description choose a random attack and stuff
if global.my_turn==true//refers to player's turn
{
		choice=irandom_range(1,my_last_attack)//attacl choices
		create_textevent(message[choice],-1)
//combat dialogue store the text in an array and cycle through each turn
}
if global.my_turn=false//it's the enemy's attack turn
{
	scr_enemy_attacks(I_enemy)
}
event_inherited();
