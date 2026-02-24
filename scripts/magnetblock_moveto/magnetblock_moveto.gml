function magnetblock_moveto(){///

airgrav += magnetoairgrav;
y += airgrav;

if instance_exists(magnetObj) {
	var _followto = instance_nearest(x, y, magnetObj)
	direction = point_direction (x, y, _followto.x*randomdir, _followto.y*randomdir);
	speed = 20;
	if place_meeting(x, y, _followto) {
		instance_destroy(_followto)
	}
}

if place_meeting(x+hspeed,y+vspeed,colisionObj) {
	hspeed = 0;
	vspeed = 0;
	if electrified == true {
		magnetoestado = magnetstate.stayelectrified
	} else if electrified == false {
		magnetoestado = magnetstate.staydelectrified
	}
}

}///