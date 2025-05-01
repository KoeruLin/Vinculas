// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//this function moves the START value toward the END value by an AMOUNT without passing.
function approach(_start, _end, _amt){
	
	if (_start > _end){
		return(max(_start - _amt, _end));	
	} else {
		return min(_start + _amt, _end);	
	}

}

//this function takes in a value, and wraps it around from a min and a max. you can use it for screen wrapping
//or constraining degrees.
function wrap(_val, _min, _max){
	if (_val mod 1 == 0)
	{
	    while (_val > _max || _val < _min)
	    {
	        if (_val > _max)
	            _val += _min - _max - 1;
	        else if (_val < _min)
	            _val += _max - _min + 1;
	    }
	    return(_val);
	}
	else
	{
	    var _vOld = _val + 1;
	    while (_val != _vOld)
	    {
	        _vOld = _val;
	        if (_val < _min)
	            _val = _max - (_min - _val);
	        else if (_val > _max)
	            _val = _min + (_val - _max);
	    }
	    return(_val);
	}
}
	
//this is a restart function.
function check_reset(_key){
	if (keyboard_check_pressed(_key)){
		room_restart(); //you could use room_restart here instead if you want	
	}
}

function clamp_pos_to_bounds(_xmin, _ymin, _xmax,  _ymax){
	x = clamp(x, _xmin, _xmax);
	y = clamp(y, _ymin, _ymax);
}

function screenwrap(_offsetLeft = 0, _offsetTop = _offsetLeft, _offsetRight = _offsetLeft, _offsetBottom = _offsetTop){
	x = Wrap(x, _offsetLeft, room_width - _offsetRight);
	y = Wrap(y, _offsetTop, room_height - _offsetBottom);
}

function take_damage(object, damage)
{
	if (instance_exists(object)) 
	{	
		if (object.object_index == obj_player)
		{
			obj_player.in_combat = true;
			obj_player.time_remaining_till_regen = obj_player.regen_timer;
			
			if (obj_player.invinciblility_frames <= 0)
			{
				obj_player.hit = true;
				obj_player.hitpoint -= damage * ((100 - obj_player.defense) / 100);
				obj_player.invinciblility_frames = 15;
			}
		}
		else
		{
			object.hitpoint -= damage * ((100 - object.defense) / 100);
		}
    }
}


function initialize_wave(enemies, magnification, spawners)
{       
	for (var i = 0; i < array_length(enemies); i++)
    {
		var chosen_spawner = spawners[irandom(array_length(spawners) - 1)];
			
        var enemy = instance_create_depth(
				chosen_spawner.x + random_range(-150, 150), 
				chosen_spawner.y + random_range(-30, 30),
                0,
                enemies[i] 
            );
			
		enemy.range += random_range(-10, 10);
		enemy.hitpoint *= (1 + (magnification / 10))
		enemy.damage *= (1 + (magnification / 10))
    }
	
	obj_wave_manager.cleared = false;
}