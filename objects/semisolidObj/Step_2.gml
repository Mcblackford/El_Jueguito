with playerObj {
	if yspd != 0 && place_meeting(x, y + yspd, semisolidObj) && (semisolidObj.solidState == true) {
	var _pixelcheck = sign(yspd);
	while !place_meeting(x, y + _pixelcheck, semisolidObj) {
	y += _pixelcheck;
	}
	y = semisolidObj.y;
	yspd = 0;
 }
}