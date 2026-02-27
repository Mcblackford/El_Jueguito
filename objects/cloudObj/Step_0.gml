depth = -110;
endtimer++;
image_xscale = 2.7;
image_yscale = 2.7;

// Estados

if estadonube == cloudstate.spawn {
	nubespawn()
}

else if estadonube == cloudstate.iddle {
	nubeiddle()
}

else if estadonube == cloudstate.death {
	nubedeath()
}

// Comportamiento

if electrifiedcloud == false && place_meeting(x,y,thunderballObj) {
	electrifiedcloud = true;
}

// Movimiento

if place_meeting(x,y,windcolision) && speed == 0 {
	
	movingtime = 45;
	
	if speed <= 30 {
		nubespd += nubeaccel;
	}
	speed = nubespd
	point_direction(x,y,x-1,y)
}

if movingtime > 0 {
	movingtime--;
}

if speed > 0 && (movingtime == 0) {
	nubespd -= nubedeccel;
	speed = nubespd;
}