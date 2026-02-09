var movingplatform = collision_rectangle(x-12, y, x+12, y+1, colisionMovObj, true, true)
if (movingplatform) && (yspd > 0) {
	x += movingplatform.movex;
	y = movingplatform.y;
	yspd = 5;
}

var metalplatform = collision_rectangle(x-12, y, x+12, y+1, metalObj, true, true)
if (metalplatform) && (yspd > 0) {
	x += metalplatform.hspeed;
	y = metalplatform.y;
	yspd = 5;
}

if place_meeting(x,y, deathObj) {
	xspd = 0;
	yspd = 0;
	gravedad = 0;
	moveSpd = 0;
} else {
	moveSpd = 9;
	gravedad = 0.65
}
