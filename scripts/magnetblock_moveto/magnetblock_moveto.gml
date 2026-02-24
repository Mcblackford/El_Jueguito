function magnetblock_moveto(){///
	

if place_meeting(x,y,ColisionDer) {
	x += -1;
}
else if place_meeting(x,y,ColisionIzq) {
	x += 1;
}
else {
	x+= 0;
}

if place_meeting(x, y, magnetObj) {
	airgrav += magnetoairgrav;
	y += airgrav;
}

if instance_exists(magnetObj) {
	var _followto = instance_nearest(x, y, magnetObj)
	direction = point_direction (x, y, _followto.x*randomdir, _followto.y*randomdir);
	speed = 20;
	if place_meeting(x, y, _followto) {
		speed = 0;
		y += 0;
	}
}

if place_meeting(x,y,colisionObj) {	
	if electrified == true {
		magnetoestado = magnetstate.stayelectrified
	} else if electrified == false {
		magnetoestado = magnetstate.staydelectrified
	}
}

}///