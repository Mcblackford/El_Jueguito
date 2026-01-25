var _target = playerObj;
if instance_exists(_target) {
	var _max_dist = 200;
	var _dist = point_distance(_target.x, _target.y, mouse_x, mouse_y)
	if _dist <= _max_dist {
		x = mouse_x;
		y = mouse_y;
	} else {
		var _dir = point_direction(_target.x, _target.y, mouse_x, mouse_y);
		x = _target.x + lengthdir_x(_max_dist, _dir);
		y = _target.y + lengthdir_y(_max_dist, _dir);
	}
}