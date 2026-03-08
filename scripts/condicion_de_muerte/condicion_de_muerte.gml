function condicion_de_muerte(){ ///

var _puerta_switch = instance_nearest(x,y, puertaObj);
var _puerta_boton = instance_nearest(x,y, puertaSumObj);

if (
// Condicion

	place_meeting(x,y,deathObj) ||
	( place_meeting(x, y, _puerta_switch) && (_puerta_switch.image_yscale != 1) ) || 
	( place_meeting(x, y, _puerta_boton) && (_puerta_boton.image_yscale != 1) )
	
// Condicion	
) {
	estado = states.muerte
}

} ///