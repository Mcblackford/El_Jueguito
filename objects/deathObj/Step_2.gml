with playerObj {
	if place_meeting(x,y, deathObj) {
		xspd = 0;
		yspd = 0;
		gravedad = 0;
		moveSpd = 0;
	} else {
		moveSpd = 9;
		gravedad = 0.65
	}
}