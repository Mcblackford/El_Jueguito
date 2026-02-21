function nubedeath(){

sprite_index = nubeDeathSpr;
if electrifiedcloud == true {
	sprite_index = nubeDeathElectSpr;
}

if (image_index > image_number-1) {
	instance_destroy()
}

}