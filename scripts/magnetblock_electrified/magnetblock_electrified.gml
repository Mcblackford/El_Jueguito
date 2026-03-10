function magnetblock_electrified(){

sprite_index = magnetocajaElecSpr;

if !place_meeting(x,y, electroColisionInt) {
	var _electrocolision = instance_create_layer(x,y, "instances", electroColisionInt)
}

if (playerObj.currenthab != habs.rayo) && !place_meeting(x,y, cloudObj) {
	magnetoestado = magnetstate.delectrified
}

electrified = true;

}