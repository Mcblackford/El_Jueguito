var _background = SeleccionHabSpr;
draw_sprite_ext(_background,0,x,y,2.135,2.135,0,c_white,alfasprite);

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

var _fuegoseleccion = nullseleccionSpr;
draw_sprite_ext(_fuegoseleccion, -1, 641, 60, 2.135, 2.135, 0, c_white, alfasprite);
sprite_set_speed(_fuegoseleccion, 2, spritespeed_framespersecond);