depth = -110;

choosesprite = random(3);
roundnumb = round(choosesprite);

randomx = random_range(-40, 40);

gotatimer++;

if gotatimer >= 5 {
	gotatimer = 0;
}

if ciclotimernube <= 0 {
	ciclotimernube = 10;
} else {
	ciclotimernube--;
}

randomelecnubx = random_range(-100,100);
randomelecnuby = random_range(-50,50);

if speed == 0 {
	endtimer++;
} else {
	endtimer+= 0;
}

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

if electrifiedcloud == false && ( place_meeting(x,y,thunderballObj) || place_meeting(x,y,electroColisionInt) ) {
	electrifiedcloud = true;
}

if electrifiedcloud == true {
	if ciclotimernube == 0 {
		var _electrified = instance_create_layer(x + randomelecnubx, y + randomelecnuby, "instances", electroColisionInt)
	}
}