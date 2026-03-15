function Not_Item_Fade(){

if alfasprite > 0 {
	alfasprite -= alfasumaspr;
} else {
	alfasprite = 0;
}

if sumposy < 100 {
	sumposy+= velocidaddesuma;
}

if alfasprite <= 0 {
	instance_destroy()
}

}