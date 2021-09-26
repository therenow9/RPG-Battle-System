/// @description move sword with the player and do sword attack

x=obj_player.x+40;
y=obj_player.y-20;
//move sword with player

if (obj_player.input_special && can_slash=true)
	{
		hurt=true;
		image_speed=1;
		obj_player.my_attack=15;
		hurt=false;
		can_slash=false;
		alarm[0]=room_speed*0.5//firing delay
		//have to debug more
	}