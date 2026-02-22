
var _targetx = finalx, _targety = finaly;
if goingtostart {
	_targetx = startx;
	_targety = starty;
}

movex = sign(_targetx - x) * currentspd;
movey = sign(_targety - y) * currentspd;

x += movex;
y += movey;

if goingtostart && point_distance(x, y, startx, starty) < currentspd {
	goingtostart = false;
	currentspd = 0;
	alarm[0] = waitframes;
} else if !goingtostart && point_distance(x, y, finalx, finaly) < currentspd {
	goingtostart = true;
	currentspd = 0;
	alarm[0] = waitframes;
}