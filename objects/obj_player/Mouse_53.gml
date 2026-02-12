if (facing == 1) and (!keyboard_check(ord("w"))) and (!keyboard_check(ord("s")))
{
	instance_create_layer(x+(sprite_width/2),y,"Instances",obj_basicAttack)
}