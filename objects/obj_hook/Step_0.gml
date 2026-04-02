

if !(collision_rectangle(x,y,x+64,y+64,obj_invisWall,false,true))
{
	vsp = vsp + grv;
	y = y + vsp
}
else
{
	speed = 0
}