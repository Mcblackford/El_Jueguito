function Not_Item_Fade(){

if alfasprite > 0 {
	alfasprite -= alfasumaspr;
} else {
	alfasprite = 0;
}

if sumaY < 150 {
	sumaY += velocidaddesuma;
}

if alfasprite <= 0 {
	instance_destroy()
}

}