/// @description hit enemy
if (hurt=true)
{
		with (obj_enemy)
		{
		enemy_health-=obj_projectile.attack_power*(my_defense/15);
		audio_play_sound(snd_damage,0,false);
		//obj_player.alarm[1]=game_get_speed(gamespeed_fps);//60 fps
		}	
}