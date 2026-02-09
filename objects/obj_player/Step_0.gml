var _key_left = keyboard_check(vk_left);
var _key_right = keyboard_check(vk_right);
var _key_jump = keyboard_check_pressed(vk_up);

// movement

var _move = _key_right - _key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,obj_invisWall)) and (_key_jump)
{
vsp = -jumpsp	
}


//horizontal collision
if(place_meeting(x + hsp,y,obj_invisWall))

{
	while (!place_meeting(x+sign(hsp),y,obj_invisWall))
	{
		x = x + sign(hsp);
	}
hsp = 0;
}

x = x + hsp

//vertical collision

if(place_meeting(x,y+vsp,obj_invisWall))
{
	while (!place_meeting(x,y+sign(vsp),obj_invisWall))
	{
		y = y + sign(vsp);
	}
vsp = 0;
}

y = y + vsp
