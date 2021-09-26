///@description scr_enemy_attacks
///@arg enemy;
function scr_enemy_attacks(argument0) {
	randomize();
	switch (argument0)
		{//cornelius' attack phases
		case obj_cornelius:
	
		{//how the fuck can i make it so one of these will run only for a certain amount of time oh ard thanks programming	
			switch obj_enemy.choice
			{
				case (1):
				{
					scr_projectile(x,scr_wave(y+40,y-40,1,5),.5,-4,6,obj_player,20,20);
					//one big projectile
					break;
				}
				case (2):
				{
					scr_projectile(x,y+20,.5,-4,7,obj_player)
					scr_projectile(x,y,.5,-4,7,obj_player)
					scr_projectile(x,y-20,.5,-4,7,obj_player);
					break;
				}
				case (3):
				{
					scr_projectile(x,y,.5,-4,7,obj_player);
					//scr_projectile(x,y,7,-4);
					break;
				}
			}
		}
		//break;
	}


}
