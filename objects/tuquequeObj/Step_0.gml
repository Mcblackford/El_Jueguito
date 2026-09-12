if (instance_exists(playerObj)) {
	if (playerObj.image_xscale > 0 || playerObj.xspd < 0) {
		image_xscale = 2;
		dis_x = 100;
		
	} else  if (playerObj.image_xscale < 0 || playerObj.xspd > 0) {
		image_xscale = -2;
		dis_x = -100;
	}
}


var target_x = playerObj.x + dis_x;
var target_y = playerObj.y + dis_y;

x = lerp(x, target_x, velmov);
y = lerp(y,target_y, velmov);
