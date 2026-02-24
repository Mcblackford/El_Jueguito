function magnetblock_stay(){///

vspeed = 0;

randomdir = random_range(0.98,1.02)

if !collision_rectangle(x,y,x+sprite_width,y+1,colisionObj,true,true) {
	magnetobloquegrav++;
	y += magnetobloquegrav;
} else {
	y+= 0;
	var plataforma = collision_rectangle(x,y,x+sprite_width,y+1,colisionObj,true,true)
	if (plataforma) {
		y = plataforma.y;
		magnetobloquegrav = 0;
	}
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

airgrav = 0;

if instance_exists(magnetObj) {
	var _target = magnetObj;
	var _long_dist = 600;
	var _dist = point_distance(x, y, _target.x, _target.y);
	if _dist <= _long_dist {
		if electrified == true {
			magnetoestado = magnetstate.movetoelectrified
		} else if electrified == false {
			magnetoestado = magnetstate.movetodelectrified
		}
	}
}

}///