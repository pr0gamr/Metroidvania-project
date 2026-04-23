// Inherit the parent event
vsp = vsp + grv;

y = y + vsp
x = x + hsp

// pogo-ing

if place_meeting(x,y,[obj_enemy_main, obj_pogoBlock, obj_hurtSurface])
{
	if (object_get_parent(obj_basicAttack).grounded == 0) and (atkDirection == 3)
	{
		object_get_parent(obj_basicAttack).vsp = -jumpsp;
	}
	var _target = collision_rectangle(x-sprite_width,y-sprite_height,x+sprite_width,y+sprite_height, obj_enemy_main,false,false)
	if _target
	{
		_target.e_hsp = 10*facing
		_target.e_vsp = -5
		_target.alarm[1] = 5
	}
}