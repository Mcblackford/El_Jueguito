if place_meeting(x, y, playerObj) && (palanca_activo == false) {
	palanca_activo = true;
	with (puertaObj) {
		if palanca == other.palanca {
			if (other.palanca_activo == true){
				palancacount += 1;
			}
		}
	}
}
	
if !place_meeting(x, y, playerObj) && (palanca_activo == true) {
	palanca_activo = false;
	with (puertaObj) {
		if palanca == other.palanca {
			if (other.palanca_activo == false){
				palancacount -= 1;
			}
		}
	}
}