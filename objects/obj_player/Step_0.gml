/// @description moivement and shit
//if (global.cutscene=true) exit;
//Update Input
image_speed=0;
#region Movement
if (can_move=true)
{
input_right=keyboard_check(ord("D"));
input_left=keyboard_check(ord("A"));
input_up=keyboard_check(ord("W"));
input_down=keyboard_check(ord("S"));
input_run=keyboard_check(ord("K"));
input_special=keyboard_check(ord("L"));

if (input_run)
{//if you are pressing k 
	var p_run=1.5;
	//run speed multiplies sprite and movement speeds by itself 
}else
	{
		p_run=1;
	}
//image_speed=0;

spd=(4*p_run)*global.mult_run;//how fast player is moving

//Inputs to keep code clean and be able to reuse easier
//Reset MOve variables after collisioncheck

moveX=0;
moveY=0;

//-----Intended movement
moveX=(input_right-input_left)*spd;
moveY=(input_down-input_up)*spd;

//Following code used for all of my movement and ish

if(input_left)
{
	
	//sprite_index=spr_ness_west;
	image_speed=1*p_run;
}

if(input_right)
{
	//sprite_index=
	image_speed=1*p_run;
}
if(input_up)
{

image_speed=1*run;
//sprite_index=spr_ness_north;
}
if(input_down){
	//moveY=spd;
	//sprite_index=
	image_speed=1*p_run;
}
 if(input_down) && (input_right)//diagnol movement
{
	//sprite_index=spr_ness_southeast;
	image_speed=1*p_run;
	}
	if(input_down) && (input_left){
	//sprite_index=spr_ness_southwest;
	image_speed=1*p_run;
	}
if(input_up) && (input_right){
	//sprite_index=spr_ness_northeast;
	image_speed=1*p_run;
	}
if(input_up) && (input_left){
	//sprite_index=spr_ness_northwest;
	image_speed=1*p_run;
	}
if (global.magic_hands=true)
{
		if (input_special)
		{
			scr_projectile(x+40,y,0.5,4,5,obj_enemy,1,1,spr_player_projectile);
		}
}
if (global.sword_time=true)
{
	if (sword_inc=0)
	{
	player_sword=instance_create_layer(x+30,y,"inst_projectiles",obj_sword)
	sword_inc=+1;
	}
	//make the sword move with the player
}
//

//Collision checks
//Horizontal
if(moveX !=0){//Only runs this code when movement is happening good for optimization
if(place_meeting(x+moveX,y,obj_collision)){
		while(!place_meeting(x+sign(moveX),y,obj_collision)){
			x+=sign(moveX);}	
	moveX=0;
	}
}
x+=moveX;
//Vertical
if(moveY !=0){
if(place_meeting(x,y+moveY,obj_collision)){
		while(!place_meeting(x,y+sign(moveY),obj_collision)){
			y+=sign(moveY);}
	moveY=0
	
	}
}
y+=moveY;
}

#endregion
//apply boosted stat for turn depending on choice
global.my_attack=my_attack*global.mult_attack;
global.my_defense=my_defense*global.mult_defense;
global.my_magic=my_magic*global.mult_magic;
