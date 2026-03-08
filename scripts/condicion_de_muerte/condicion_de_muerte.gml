function condicion_de_muerte(){ ///

if (
// Condicion

	place_meeting(x,y,deathObj) ||
	( place_meeting(x, y, puertaObj) && (puertaObj.image_yscale != 1) ) || 
	( place_meeting(x, y, puertaSumObj) && (puertaObj.image_yscale != 1) )
	
// Condicion	
) {
	estado = states.muerte
}

} ///