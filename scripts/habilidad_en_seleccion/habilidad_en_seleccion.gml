function habilidad_en_seleccion(){ // Inicio de Script

arriba = keyboard_check( ord("W") );
abajo = keyboard_check( ord("S") );

if instance_exists(spellswheelObj) {
	
	
	if spellswheelObj.nullselect == true {
		currenthab = habs.null;
	}
	
// Habilidades
	
	else if spellswheelObj.fuegoselect == true {
		if fuegospell == true {
			currenthab = habs.fuego;
		} else {
			currenthab = habs.null;
		}
	}
	
	else if spellswheelObj.vientoselect == true {
		if vientospell == true {
			currenthab = habs.viento;
		} else {
			currenthab = habs.null;
		}
	}
	
	else if spellswheelObj.imanselect == true {
		if imanspell == true {
			currenthab = habs.iman;
		} else {
			currenthab = habs.null;
		}
	}
		
	else if spellswheelObj.rayoselect == true {
		if rayospell == true {
			currenthab = habs.rayo;
		} else {
			currenthab = habs.null;
		}
	}
	
	else if spellswheelObj.nubeselect == true {
		if nubespell == true {
			currenthab = habs.nube;
		} else {
			currenthab = habs.null;
		}
	}
	
	else if spellswheelObj.luzselect == true {
		if luzspell == true {
			currenthab = habs.luz;
		} else {
			currenthab = habs.null;
		}
	}
	
	else if spellswheelObj.armoniaselect == true {
		if armoniaspell == true {
			if arriba {
				currenthab = habs.armoniamayor;
			} else if abajo {
				currenthab = habs.armoniamenor;
			} else {
				currenthab = habs.armonia;
			}
		} else {
			currenthab = habs.null;
		}
	}
	
	else {
		currenthab = habs.null;
	}


} else {
	currenthab = habs.null;
}



} // Fin del script