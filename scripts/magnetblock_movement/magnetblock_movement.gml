function magnetblock_movement(){///

if instance_exists(magnetObj) {
	var _target = instance_nearest(x,y,magnetObj);
	var _distance = 600;
	var _dist = point_distance(x,y,_target.x,_target.y);
	if _dist <= _distance {
		direction = point_direction (x, y, _target.x, _target.y);
		magnetaccel += magnetaccelval;
		magnetobloquegrav = 0;
		if !place_meeting(x,y, _target) {
			if !place_meeting(x,y,colisionObj) {
				speed = 10 + magnetaccel;
			} else {
				vspeed *= -1;
			}
		} else {
			speed = 0;
		}
	} else {
		magnetaccel = 0;
		magnetobloquegrav += magnetograval;
		vspeed = 0;
	}
} else {
	magnetaccel = 0;
	magnetobloquegrav += magnetograval;
	vspeed = 0;
}	
	
if !collision_rectangle(x,y,x+sprite_width,y+1,colisionObj,true,true) {
	y += magnetobloquegrav;
} else {
	y+= 0;
	var plataforma = collision_rectangle(x,y,x+sprite_width,y+1,colisionObj,true,true)
	if (plataforma) {
		y = plataforma.y;
		cajagravedad = 0;
	}
}

if place_meeting(x,y,ColisionDer) {
	x += -1;
}
if place_meeting(x,y,ColisionIzq) {
	x += 1;
} else {
	x += 0;
}

}///