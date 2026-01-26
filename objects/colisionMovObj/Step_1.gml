
var _targetx = finalx, _targety = finaly;
if goingtostart {
	_targetx = startx;
	_targety = starty;
}

movex = sign(_targetx - x) * currentspd;
movey = sign(_targety - y) * currentspd;