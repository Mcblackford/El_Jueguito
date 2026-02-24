endtimer++;

if instance_exists(cursorObj) {
	var _cursor = instance_nearest(x,y, cursorObj);
	var _distance = point_distance(x,y, _cursor.x,_cursor.y)
	direction = point_direction (x, y, _cursor.x, _cursor.y);
	speed = _distance*0.1;
}
	

if endtimer >= 180 || !mouse_check_button(mb_left) {
	instance_destroy()
}

depth = -98;