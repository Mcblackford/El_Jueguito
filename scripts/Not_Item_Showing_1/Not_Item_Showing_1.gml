function Not_Item_Showing_1(){

if playerObj.notificationcount > 1 {
	with playerObj {
		notificationcount = notificationcount - 1
	}
	estadonotif = notificacion.movedown
} 

else if fadetimer <= 0 {
	with playerObj {
		notificationcount = notificationcount - 1
	}
	estadonotif = notificacion.fade;
}

}