function magnetblock_electrified(){

sprite_index = magnetocajaElecSpr;

if ciclotimermag == 0 {
	var _electrified = instance_create_layer(x + (sprite_width * 0.5) + randomnumberx, y - (sprite_height * 0.5) + randomnumbery, "instances", electroColisionInt)
}

if (playerObj.currenthab != habs.rayo) && !place_meeting(x,y, cloudObj) {
	magnetoestado = magnetstate.delectrified
}

electrified = true;

}