var target_x = playerObj.x + dis_x;
var target_y = playerObj.y + dis_y;

x = lerp(x, target_x, velmov);
y = lerp(y,target_y, velmov);
