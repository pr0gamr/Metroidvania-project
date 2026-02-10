var _key_left = keyboard_check(vk_left);
var _key_right = keyboard_check(vk_right);
var _key_jump = keyboard_check_pressed(vk_up);

// movement

var _move = (_key_right - _key_left) * walksp;

hsp = Approach(hsp, _move, accel);

vsp = vsp + grv;

if (place_meeting(x,y+1,obj_invisWall)) and (_key_jump)
{
vsp = -jumpsp;
}


//horizontal collision
if(place_meeting(x + hsp,y,obj_invisWall))
{
	if ((_key_left or _key_right) and place_meeting(x+sign(hsp),y,obj_invisWall))
	{
		if (vsp >= 1)
		{
			vsp = 1;
		}
		if (_key_jump)
		{
			vsp = -jumpsp;
			if (_key_right)
			{
				hsp = -100;
			}
			else if (_key_left)
			{
				hsp = 100;
			}
		}
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

function Approach(speed, max_speed, acceleration)
{
    if (speed < max_speed) {
        speed += acceleration;
        if (speed > max_speed) {
            return max_speed;
        }
    } else {
        speed -= acceleration;
    
        if (speed < max_speed) {
            return max_speed;
        }
    }
    
    return speed;
}
