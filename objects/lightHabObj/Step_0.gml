if instance_exists(cursorObj) {
	var _cursor = instance_nearest(x,y, cursorObj);
	var _distance = point_distance(x,y, _cursor.x,_cursor.y)
	direction = point_direction (x, y, _cursor.x, _cursor.y);
	speed = _distance*0.1;
}
	

if !mouse_check_button(mb_left) || (cursorObj.sprite_index != luzCur) {
	instance_destroy()
}

with playerObj {
	habilidadcooldown = 60;
}

depth = -98;