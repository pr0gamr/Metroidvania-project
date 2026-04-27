// Inherit the parent event
vsp = vsp + grv;

y = y + vsp
x = x + hsp

// pogo-ing

if place_meeting(x,y,[obj_enemy_main, obj_pogoBlock, obj_hurtSurface]) and !hit
{
	hit = 1
	if (object_get_parent(obj_basicAttack).grounded == 0) and (atkDirection == 3)
	{
		object_get_parent(obj_basicAttack).vsp = -jumpsp;
	}
	var _target = collision_rectangle(x-sprite_width,y-sprite_height,x+sprite_width,y+sprite_height, obj_enemy_main,false,false)
	if _target
	{
		if atkDirection == 2 or atkDirection == 4
		{
			_target.e_hsp = 10*obj_player.facing
			_target.e_vsp = -5
		}
		else if atkDirection == 1
		{
			_target.e_hsp = 3*obj_player.facing
			_target.e_vsp = -10
		}
		else
		{
			_target.e_vsp = 5
		}
		_target.alarm[1] = 5
		_target.e_health -= 1
	}
}