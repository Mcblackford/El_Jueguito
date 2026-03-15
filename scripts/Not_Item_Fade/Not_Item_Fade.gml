function Not_Item_Fade(){

if alfasprite > 0 {
	alfasprite -= alfasumaspr;
} else {
	alfasprite = 0;
}

if sumposy < 50 {
	sumposy++
}

if alfasprite <= 0 {
	instance_destroy()
}

}