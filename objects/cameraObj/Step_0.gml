
if playerObj.estado != states.adquirhab {
	follow = camerafollowObj;
	
	if cursorObj.cursordistance == 1 {
		x += (xTo - x) / 35;
		y += (yTo - y) / 35;
	} else if cursorObj.cursordistance == 2 {
		x += (xTo - x) / 20;
		y += (yTo - y) / 15;
	} else if cursorObj.cursordistance == 3 {
		x += (xTo - x) / 15;
		y += (yTo - y) / 10;
	} else if cursorObj.cursordistance == 4 {
		x += (xTo - x) / 10;
		y += (yTo - y) / 10;
	}
	
} else {
	follow = playerObj;	
	x += (xTo - x) / 20;
	y += (yTo - y) / 15;
}

if follow != noone {
	xTo = follow.x
	yTo = follow.y
}



camera_set_view_pos(view_camera[0], x - (camLar*0.53), y - (camAlt*0.6));