
if follow != noone {
	xTo = follow.x
	yTo = follow.y
}

x += (xTo - x) / 17.5;
y += (yTo - y) / 15;

camera_set_view_pos(view_camera[0], x - (camLar*0.5), y - (camAlt*0.6));