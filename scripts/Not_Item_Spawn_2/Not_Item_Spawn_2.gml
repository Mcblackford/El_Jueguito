function Not_Item_Spawn_2(){

if alfasprite < 1 {
	alfasprite += alfasumaslow;
} else {
	alfasprite = 1;
}

if playerObj.notificationcount == 1 {
	estadonotif = notificacion.spawn_1;
}

if sumaY < 0 {
	sumaY += velocidaddesuma;
} else {
	sumaY = 0;
}

if alfasprite == 1 {
	if playerObj.notificationcount == 1 {
		estadonotif = notificacion.showing_1;
	} else if playerObj.notificationcount >= 2 {
		estadonotif = notificacion.showing_2;
	}
}

}