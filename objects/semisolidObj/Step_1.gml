if instance_exists(PlatID) {

	x = PlatID.x + (offsetX);
	y = PlatID.y + (offsetY);
	
	if PlatID.hspeed != 0 {
		vhoriz = PlatID.hspeed
	}
}

else {
	x = 0;
	y = 0;
}