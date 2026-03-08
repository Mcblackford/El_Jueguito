function magnetblock_electrified(){

sprite_index = magnetocajaElecSpr;

if (playerObj.currenthab != habs.rayo) && !place_meeting(x,y, cloudObj) {
	magnetoestado = magnetstate.delectrified
}

electrified = true;

}