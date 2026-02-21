function nubespawn(){

sprite_index = nubeSpawnSpr;

if electrifiedcloud == true {
	sprite_index = nubeSpawnElectSpr;
}

if (image_index > image_number-1) {
	estadonube = cloudstate.iddle
}

}