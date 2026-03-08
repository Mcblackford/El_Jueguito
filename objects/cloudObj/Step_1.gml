// Movimiento

if place_meeting(x,y,windColisionObj) {
	speed = 5 * cursorObj.cursordistance;
	if cursorObj.cursorstate == 0 {
		direction = point_direction(x,y,x-1,y)
	} else if cursorObj.cursorstate == 1 {
		direction = point_direction(x,y,x+1,y)
	} else if cursorObj.cursorstate == 2 {
		direction = point_direction(x,y,x,y-1)
	} else if cursorObj.cursorstate == 3 {
		direction = point_direction(x,y,x,y+1)
	}
}

if speed > 0 {
	nubespd = nubedeccel;
	speed -= nubespd;
} else {
	nubespd = 0;
}