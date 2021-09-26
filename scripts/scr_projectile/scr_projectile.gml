///@description scr_projectile
///@arg x
///@arg y
///@arg firing_delay
///@arg speed
///@arg attack_power
///@arg hurt
///@arg *xscale
///@arg *yscale
///@arg *sprite_index
function scr_projectile() {
	//var proj=instance_create_layer(argument[0],argument[1],"inst_projectiles",obj_projectile)
		if(obj_enemy.alarm[0]==-1)//which it never will be
		{
			obj_enemy.alarm[0]=room_speed*argument[2]//firing delay
		}
	if (obj_enemy.firing=true)
	{
		var proj=instance_create_layer(argument[0],argument[1],"inst_projectiles",obj_projectile)
		obj_enemy.firing=false;
		//create projectiles and their properties
		proj.attack_power=argument[4];
		proj.speed=argument[3];
		proj.hurt=argument[5];
			if (argument_count>6)
			{
				proj.image_xscale=argument[6];
			}
			if (argument_count>7)
			{
				proj.image_yscale=argument[7];
			}
			if (argument_count>8)
			{
				proj.sprite_index=argument[8];
			}
		//temporary fix but there is definitely a cleaner way 
	}



}
