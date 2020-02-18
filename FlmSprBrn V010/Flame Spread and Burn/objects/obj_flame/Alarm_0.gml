/// @description Flame Burn and Spread

//Picks random direction to spread to. If you prefer you can only use the four cardinal directions.
var dir = choose(0,45,90,135,180,225,270,315);
//Prepare function to check for flammable object in chosen direction.
var checkTarget = checkFor_object_xy(x+lengthdir_x(16,dir),y+lengthdir_y(16,dir),class_flammable);

if instance_exists(myTarget)
{
	//Damage target of flame and destroy it if its hp has reached 0.
	with(myTarget)
	{
		hp = damage_variable(hp,1);
		if damage_variable_destroy(hp,0,myId)	
		{
			instance_destroy();
		}
	}
}
//If target of flame does not exist anymore, destroy the flame.
else
{
	instance_destroy();
}

//If a flammable object is present at pre-defined position and it is not yet burning, a random number
//will decide whether the object will catch flame or not. If so, a new flame is created at its location.
if checkTarget
{
	if instance_exists(checkTarget)
	{
		if checkTarget.status != "burning"
		{
			var pickNumber = irandom_range(1,100);
			if pickNumber <= checkTarget.flammability
			{					
				var flame = instance_create_layer(checkTarget.x,checkTarget.y,"Flames",obj_flame);
				flame.myTarget = checkTarget;
				checkTarget.status = "burning";
			}
		}
	}
		
}
//Reset alarm and wait till the next flame-burn and spread-action
alarm[0] = room_speed * spreadInterval;



