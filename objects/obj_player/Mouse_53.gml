if (facing == 1) and (!keyboard_check(ord("W"))) and (!keyboard_check(ord("S")))
{
	var _attack = instance_create_layer(x+(sprite_width/2)+(sprite_get_width(Sprite3)/2),y,"Instances",obj_basicAttack)
	_attack.atkDirection = 2;
	_attack.hsp = hsp;
	_attack.vsp = vsp;
}
else if (facing == -1) and (!keyboard_check(ord("W"))) and (!keyboard_check(ord("S")))
{
	var _attack = instance_create_layer(x-(sprite_width/2)-(sprite_get_width(Sprite3)/2),y,"Instances",obj_basicAttack)
	_attack.atkDirection = 4;
	_attack.hsp = hsp;
	_attack.vsp = vsp;
}
else if (keyboard_check(ord("W"))) and (!keyboard_check(ord("S")))
{
	var _attack = instance_create_layer(x,y-(sprite_height),"Instances",obj_basicAttack)
	_attack.atkDirection = 1;
	_attack.hsp = hsp;
	_attack.vsp = vsp;
}
else if (!keyboard_check(ord("W"))) and (keyboard_check(ord("S"))) and (!grounded)
{
	var _attack = instance_create_layer(x,y+(sprite_height),"Instances",obj_basicAttack)
	_attack.atkDirection = 3;
	_attack.hsp = hsp;
	_attack.vsp = vsp;
}