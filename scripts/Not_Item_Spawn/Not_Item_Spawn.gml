function Not_Item_Spawn(){

if alfasprite < 1 {
	alfasprite += alfasumaspr;
} else {
	alfasprite = 1;
}

if alfasprite == 1 {
	estadonotif = notificacion.showing;
}

}