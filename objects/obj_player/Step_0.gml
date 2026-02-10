var _key_left = keyboard_check(vk_left);
var _key_right = keyboard_check(vk_right);
var _key_jump = keyboard_check_pressed(vk_up);
var _grounded = 0;
// movement

var _move = (_key_right - _key_left) * walksp;

hsp = Approach(hsp, _move, accel);

vsp = vsp + grv;

if (place_meeting(x,y+1,obj_invisWall))
{
	_grounded = 1;
}

if (_grounded) and (_key_jump)
{
vsp = -jumpsp;
}


//horizontal collision
if (place_meeting(x+hsp,y,obj_invisWall))
{
	hsp = 0;
	if (vsp >= 1)
	{
		vsp = 1;
	}
	if (_key_jump)
	{
		vsp = -jumpsp;
		if (!_grounded)
		{
			if (_key_right)
			{
				hsp = -walksp;
			}
			else if (_key_left)
			{
				hsp = walksp;
			}
		}
	}
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
