function Not_Item_Showing_2(){

if playerObj.notificationcount == 1 {
	estadonotif = notificacion.showing_1;
}

else if fadetimer <= 0 {
	with playerObj {
		notificationcount = notificationcount - 1
	}
	estadonotif = notificacion.fade;
}

}