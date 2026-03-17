function Not_Item_Spawn(){

if alfasprite < 1 {
	alfasprite += alfasumaslow;
} else {
	alfasprite = 1;
}

if sumaY < 0 {
	sumaY += velocidaddesuma;
} else {
	sumaY = 0;
}

if playerObj.notificationcount > 1 {
	estadonotif = notificacion.movedown
} 

if alfasprite == 1 {
	if playerObj.notificationcount == 1 {
		estadonotif = notificacion.showing_1;
	}
}

}