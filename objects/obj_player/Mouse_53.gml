if (facing == 1) and (!keyboard_check(ord("W"))) and (!keyboard_check(ord("S")))
{
	instance_create_layer(x+(sprite_width/2)+(Sprite3.sprite_width),y,"Instances",obj_basicAttack)
}
else if (facing == -1) and (!keyboard_check(ord("W"))) and (!keyboard_check(ord("S")))
{
	instance_create_layer(x-(sprite_width/2)-(Sprite3.sprite_width),y,"Instances",obj_basicAttack)
}
else if (keyboard_check(ord("W"))) and (!keyboard_check(ord("S")))
{
	instance_create_layer(x,y-(sprite_height/2)-(Sprite3.sprite_height/2),"Instances",obj_basicAttack)
}
else if (!keyboard_check(ord("W"))) and (keyboard_check(ord("S"))) and (!grounded)
{
	instance_create_layer(x,y+(sprite_height/2)+(Sprite3.sprite_height/2),"Instances",obj_basicAttack)
}