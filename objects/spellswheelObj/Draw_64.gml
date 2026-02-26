draw_sprite_ext(SeleccionHabSpr,0,x,y,2.135,2.135,0,c_white,alfasprite);

if estadoderueda == ruedaestado.activo {
	if alfasprite < 1 {
		alfasprite += alfasumaspr;
	} else {
		alfasprite = 1;
	}
}

else if estadoderueda == ruedaestado.inactivo {
	if alfasprite > 0 {
		alfasprite -= alfasumaspr;
	} else {
		alfasprite = 0;
	}
}
