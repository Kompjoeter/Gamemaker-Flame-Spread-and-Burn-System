///@function checkFor_object_xy(x,y,obj)
///@argument x
///@argument y
///@argument obj

//Initialize variables
var xx,yy,obj
xx = argument0;
yy = argument1;
obj = argument2;


//Check for object at x,y position, if true return instance id
var checkTarget = instance_place(argument0,argument1,argument2);
if (checkTarget)
	{
		return checkTarget;
	}
	else
	{
		return false;
	}