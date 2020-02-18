///@function pickRandom_instance(obj)
///@argument obj

//Initialize Variables
var obj, inst;
obj = argument0;

//Pick random instance (of object) in the room, return its id
var inst = instance_find(obj, irandom(instance_number(obj) - 1));
return inst;

