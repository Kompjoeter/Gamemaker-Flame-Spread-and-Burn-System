/// @description Initialize Variables
//Necessary variable, do not change!
randomize();
//Toggle Text
drawText = true;

//At the start of the game, set one of the flammable objects on fire.
//This piece of code is not required for this project to work. However,
//if you don't want to use it you'd have to figure out your own way of lighting fires.
//This code could be of some help.
var bush = pickRandom_instance(obj_bush);
	if bush != "burning"
	{
		var flame = instance_create_layer(bush.x,bush.y,"Flames",obj_flame);
		flame.myTarget = bush;
		bush.status = "burning";
	}