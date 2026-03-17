function Not_Item_Hiden(){

fadetimer = fadetimerini;

if place_meeting(x,y, playerObj) && playerObj.notificationcount < 2 {
	with playerObj {
		notificationcount = notificationcount + 1
	}
	if playerObj.notificationcount == 1 {
		estadonotif = notificacion.spawn_1;
	} else if playerObj.notificationcount >= 2 {
		estadonotif = notificacion.spawn_2;
	}
}

}