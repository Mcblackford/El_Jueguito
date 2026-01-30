var movingplatform = collision_rectangle(x-12, y, x+12, y+1, colisionMovObj, true, true)
if (movingplatform) && (yspd > 0) {
	x += movingplatform.movex;
	y = movingplatform.y;
	yspd = 5;
}
