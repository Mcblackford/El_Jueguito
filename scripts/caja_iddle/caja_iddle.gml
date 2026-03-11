function caja_iddle(){

sprite_index = CajaSpr;
boxonfire = false;
burntimer = 0;

if place_meeting(x,y, fireballObj) || place_meeting(x,y, fuegoColisionInt) {
	estadocaja = cajastate.burning
}

}