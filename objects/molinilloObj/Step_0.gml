depth = -95;
image_xscale = 2.5;
image_yscale = 2.5;

if molinillorotacion > 0 {
	molinillorotacion-= molinillodeceleracion
}

if place_meeting(x,y, windColisionObj) {
	if cursorObj.cursordistance = 1 {
		molinillorotacion = 5;
	} else if cursorObj.cursordistance = 2 {
		molinillorotacion = 10;
	} else if cursorObj.cursordistance = 3 {
		molinillorotacion = 15;
	} else if cursorObj.cursordistance = 4 {
		molinillorotacion = 20;
	}
}

image_angle += molinillorotacion;