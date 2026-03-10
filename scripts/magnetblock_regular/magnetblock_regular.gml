function magnetblock_regular(){

sprite_index = magnetocajaSpr;

if place_meeting(x,y,thunderballObj) || place_meeting(x,y, electroColisionInt) {
	magnetoestado = magnetstate.electrified
}

electrified = false;

}