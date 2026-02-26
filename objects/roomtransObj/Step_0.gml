depth = -9999

if (room != newroom) {
	fadelevel += 0.025;
	if (fadelevel >= 1) {
		room_goto(newroom);
		playerObj.x = roomx;
		playerObj.y = roomy;
	}
} else {
	fadelevel -= 0.025;
}

if (fadelevel <= 0) {
	instance_destroy();
}