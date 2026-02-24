function magnetblock_moveto(){///

if instance_exists(magnetObj) {
	var _followto = instance_nearest(x, y, magnetObj)
	direction = point_direction (x, y, _followto.x, _followto.y);
	speed = 20;
} else {
	var _followto = playerObj
}

if place_meeting(x,y,ColisionDer) {
	x += -1;
}
else if place_meeting(x,y,ColisionIzq) {
	x += 1;
}
else {
	x+= 0;
}

airgrav += magnetoairgrav;
y += airgrav;

if place_meeting(x+hspeed,y+1,colisionObj) || place_meeting(x,y,magnetObj) {
	if electrified == true {
		magnetoestado = magnetstate.stayelectrified
	} else if electrified == false {
		magnetoestado = magnetstate.staydelectrified
	}
}

}///