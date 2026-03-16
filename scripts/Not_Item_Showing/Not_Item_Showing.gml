function Not_Item_Showing(){

var _another_notif = notifItemObj.estadonotif
var _newnotif = instance_nearest(x,y, _another_notif)


if instance_number(_newnotif) > 1  && _newnotif != notificacion.movedown {
	estadonotif = notificacion.movedown
} else

if fadetimer <= 0 {
	estadonotif = notificacion.fade
}

}