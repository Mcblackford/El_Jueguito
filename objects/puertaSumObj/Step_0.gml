depth = -100;
image_yscale = yscale;

if (botoncount >= botonneces) {
	
	if yscale > 0 {
		yscale -= yscalespd;
	} else {
		yscale += 0;
	}
} else {

	if yscale < 1 {
		yscale += yscalespd;
	} else {
		yscale += 0;
	}
}