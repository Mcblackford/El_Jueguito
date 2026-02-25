interact = keyboard_check_pressed( ord("E"));
habilidad = mouse_check_button_pressed(mb_left);

if place_meeting(x, y, playerObj) && (interact || (habilidad && (cursorObj.sprite_index = standarCur))) {
	boton_activo = !boton_activo;
	with (puertaSumObj) {
	if boton == other.boton {
		if (other.boton_activo){
		botoncount += 1;
		} else {botoncount -=1}
	
}
}
}

if boton_activo == true { sprite_index = botonactSpr } else { sprite_index = botonSpr }