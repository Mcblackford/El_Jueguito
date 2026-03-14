if spellswheelObj.estadoderueda == ruedaestado.activo {
	if alfasprite < 1 {
		alfasprite += alfasumaspr;
	} else {
		alfasprite = 1;
	}
}

else if spellswheelObj.estadoderueda == ruedaestado.inactivo {
	if alfasprite > 0 {
		alfasprite -= alfasumaspr;
	} else {
		alfasprite = 0;
	}
}

if spellswheelObj.nullselect == true {
	draw_sprite_ext(nullseleccionActiveSpr, -1, 641, 60, 2.135, 2.135, 0, c_white, alfasprite);
} else {
	draw_sprite_ext(nullseleccionSpr, -1, 641, 60, 2.135, 2.135, 0, c_white, alfasprite);
}

///////////////////////////////

if playerObj.fuegospell == true {

	if spellswheelObj.fuegoselect == true {
		draw_sprite_ext(fuegoseleccionActiveSpr, -1, 845, 128, 2.135, 2.135, 0, c_white, alfasprite);
	} else {
		draw_sprite_ext(fuegoseleccionSpr, -1, 845, 128, 2.135, 2.135, 0, c_white, alfasprite);
	}
	
} else {
	
	if spellswheelObj.fuegoselect == true {
		draw_sprite_ext(unavseleccionActiveSpr, -1, 845, 128, 2.135, 2.135, 0, c_white, alfasprite);
	} else {
		draw_sprite_ext(unavseleccionSpr, -1, 845, 128, 2.135, 2.135, 0, c_white, alfasprite);
	}
	
}

/////////////////////////////////

if playerObj.vientospell == true {

	if spellswheelObj.vientoselect == true {
		draw_sprite_ext(vientoseleccionActiveSpr, -1, 914, 333, 2.135, 2.135, 0, c_white, alfasprite);
	} else {
		draw_sprite_ext(vientoseleccionSpr, -1, 914, 333, 2.135, 2.135, 0, c_white, alfasprite);
	}
	
} else {

	if spellswheelObj.vientoselect == true {
		draw_sprite_ext(unavseleccionActiveSpr, -1, 914, 333, 2.135, 2.135, 0, c_white, alfasprite);
	} else {
		draw_sprite_ext(unavseleccionSpr, -1, 914, 333, 2.135, 2.135, 0, c_white, alfasprite);
	}
	
}

/////////////////////////////////////

if playerObj.imanspell == true {

	if spellswheelObj.imanselect == true {
		draw_sprite_ext(imanseleccionActivoSpr, -1, 845, 538, 2.135, 2.135, 0, c_white, alfasprite);
	} else {
		draw_sprite_ext(imanseleccionSpr, -1, 845, 538, 2.135, 2.135, 0, c_white, alfasprite);
	}
	
} else {

	if spellswheelObj.imanselect == true {
		draw_sprite_ext(unavseleccionActiveSpr, -1, 845, 538, 2.135, 2.135, 0, c_white, alfasprite);
	} else {
		draw_sprite_ext(unavseleccionSpr, -1, 845, 538, 2.135, 2.135, 0, c_white, alfasprite);
	}
	
}

///////////////////////////////////

if playerObj.rayospell == true {

	if spellswheelObj.rayoselect == true {
		draw_sprite_ext(rayoseleccionActiveSpr, -1, 641, 606, 2.135, 2.135, 0, c_white, alfasprite);
	} else {
		draw_sprite_ext(rayoseleccionSpr, -1, 641, 606, 2.135, 2.135, 0, c_white, alfasprite);
	}
	
} else {

	if spellswheelObj.rayoselect == true {
		draw_sprite_ext(unavseleccionActiveSpr, -1, 641, 606, 2.135, 2.135, 0, c_white, alfasprite);
	} else {
		draw_sprite_ext(unavseleccionSpr, -1, 641, 606, 2.135, 2.135, 0, c_white, alfasprite);
	}
	
}

///////////////////////////////////////

if playerObj.nubespell == true {

	if spellswheelObj.nubeselect == true {
		draw_sprite_ext(nubeseleccionActiveSpr, -1, 437, 538, 2.135, 2.135, 0, c_white, alfasprite);
	} else {
		draw_sprite_ext(nubeseleccionSpr, -1, 437, 538, 2.135, 2.135, 0, c_white, alfasprite);
	}

} else {

	if spellswheelObj.nubeselect == true {
		draw_sprite_ext(unavseleccionActiveSpr, -1, 437, 538, 2.135, 2.135, 0, c_white, alfasprite);
	} else {
		draw_sprite_ext(unavseleccionSpr, -1, 437, 538, 2.135, 2.135, 0, c_white, alfasprite);
	}

}

///////////////////////////////////

if playerObj.luzspell == true {

	if spellswheelObj.luzselect == true {
		draw_sprite_ext(luzseleccionActiveSpr, -1, 368, 333, 2.135, 2.135, 0, c_white, alfasprite);
	} else {
		draw_sprite_ext(luzseleccionSpr, -1, 368, 333, 2.135, 2.135, 0, c_white, alfasprite);
	}

} else {

	if spellswheelObj.luzselect == true {
		draw_sprite_ext(unavseleccionActiveSpr, -1, 368, 333, 2.135, 2.135, 0, c_white, alfasprite);
	} else {
		draw_sprite_ext(unavseleccionSpr, -1, 368, 333, 2.135, 2.135, 0, c_white, alfasprite);
	}

}

////////////////////////////////

if playerObj.armoniaspell {

	if spellswheelObj.armoniaselect == true {
		draw_sprite_ext(musicaseleccionActiveSpr, -1, 436, 128, 2.135, 2.135, 0, c_white, alfasprite);
	} else {
		draw_sprite_ext(musicaseleccionSpr, -1, 436, 128, 2.135, 2.135, 0, c_white, alfasprite);
	}
	
} else {

	if spellswheelObj.armoniaselect == true {
		draw_sprite_ext(unavseleccionActiveSpr, -1, 436, 128, 2.135, 2.135, 0, c_white, alfasprite);
	} else {
		draw_sprite_ext(unavseleccionSpr, -1, 436, 128, 2.135, 2.135, 0, c_white, alfasprite);
	}
	
}