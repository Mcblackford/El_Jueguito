if place_meeting(x, y, colisionObj) || (place_meeting(x, y, semisolidObj) && semisolidObj.solidState == true) {
	instance_destroy()
}

depth = -98;