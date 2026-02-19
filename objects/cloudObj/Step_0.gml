endtimer++;

if place_meeting (x,y,windcolision) {
	if (windcolision.sprite_index == windleftcolSpr) {
		hspeed = -5;
		if hspeed < 0 {
			hspeed++;
		} else {
			hspeed = 0;
		}
	}
	if (windcolision.sprite_index == windrightcolSpr) {
		hspeed = 5;
	}
	if (windcolision.sprite_index == windupcolSpr) {
		vspeed = -5;
	}
	if (windcolision.sprite_index == winddowncolSpr) {
		vspeed = 5;
	}
} else if place_meeting(x,y,colisionObj) {
	hspeed = 0;
	vspeed = 0;
}

if endtimer > 340 {
	instance_destroy()
}

depth = -98;