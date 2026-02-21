function nubeiddle(){

sprite_index = nubeIddleSpr;
if electrifiedcloud == true {
	sprite_index = nubeIddleElectSpr;
}

if endtimer > 340 && (image_index > image_number-1) {
	estadonube = cloudstate.death;
}

}