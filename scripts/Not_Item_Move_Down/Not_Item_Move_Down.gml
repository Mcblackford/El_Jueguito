function Not_Item_Move_Down(){

if alfasprite > 0.5 {
	alfasprite -= alfasumaspr;
}

if sumaY < 140 {
	sumaY += velocidaddesuma;
}

if fadetimer <= 0 || instance_number(notifItemObj) > 2 {
	estadonotif = notificacion.fade;
}

}