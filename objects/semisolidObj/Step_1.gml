if instance_exists(PlatID) {

	x = PlatID.x + (offsetX);
	y = PlatID.y + (offsetY);
	
	if PlatID.hspeed != 0 {
		vhoriz = PlatID.hspeed
	}
	
	/// Caja de Madera
	if PlatformType == 1 {
		
		vhoriz = (PlatID.cajaxspd - PlatID.cajadecel) * PlatID.randomwind * PlatID.sidedvalue ;
		
	}
	/// Caja Iman
	else if PlatformType == 2 {
		
		vhoriz = PlatID.hspeed;
		
	}
	/// Plataforma Viento
	else if PlatformType == 3 {
		
		vhoriz = PlatID.hspeed;
		
	}
	/// Plataforma Movil
	else if PlatformType == 4 {
		
		vhoriz = PlatID.movex;
		
	}
	
	else if PlatformType == 0 {
		
		vhoriz = 0;
	}
	
}