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