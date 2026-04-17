if (object_get_parent(obj_basicAttack).grounded == 0) and (atkDirection == 3)
{
	object_get_parent(obj_basicAttack).vsp = -jumpsp;
}