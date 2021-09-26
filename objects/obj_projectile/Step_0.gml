/// @description Destroy when turn ends
if (global.my_turn=true)
{
	instance_destroy();	
	//avoid errors and and damage happening after the turn ends
}