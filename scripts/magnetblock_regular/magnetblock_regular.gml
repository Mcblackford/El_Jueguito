function magnetblock_regular(){

sprite_index = magnetocajaSpr;

if place_meeting(x,y,thunderballObj) {
	magnetoestado = magnetstate.stayelectrified
}

electrified = false;

}