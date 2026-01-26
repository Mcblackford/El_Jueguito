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