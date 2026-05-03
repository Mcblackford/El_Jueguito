var movingplatform = collision_rectangle(x-24, y-24, x+24, y+24, semisolidObj, true, true)
if (movingplatform) && (yspd > 0) {
	x += movingplatform.vhoriz;
	y = movingplatform.y;
	yspd = 5;
}