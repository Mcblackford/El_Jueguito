function Not_Item_Show(){

if instance_number(notifItemObj) > 1 {
	estadonot = notif.move
}

if timernot <= 0 {
	estadonot = notif.fade
}

}