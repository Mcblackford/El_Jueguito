image_yscale = 2.5;

if (instance_exists(playerObj)) {
	if (playerObj.image_xscale > 0 || playerObj.xspd < 0) {
		image_xscale = 2.5;
		dis_x = 100;
	} else if (playerObj.image_xscale < 0 || playerObj.xspd > 0) {
		image_xscale = -2.5;
		dis_x = -100;
	}
	var target_x = playerObj.x + dis_x;
	var target_y = playerObj.y + dis_y;

	var next_x = lerp(x, target_x, velmov);
	var next_y = lerp(y, target_y, velmov);

	if (!place_meeting(next_x, y, colisionObj)) {
		x = next_x;
	} else {
		var dir_x = sign(next_x - x);
		while (!place_meeting(x + dir_x, y, colisionObj)) {
			x += dir_x;
		}
	}

	if (!place_meeting(x, next_y, colisionObj)) {
		y = next_y; 
	} else {
		var dir_y = sign(next_y - y);
		while (!place_meeting(x, y + dir_y, colisionObj)) {
			y += dir_y;
		}
	}
	if (point_distance(x, y, playerObj.x, playerObj.y) > 550) {
		x = next_x;
		y = next_y; 
	}
}