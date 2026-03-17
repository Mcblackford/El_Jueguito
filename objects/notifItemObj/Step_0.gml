fadetimer--;
rotationsum++;

posicionYfinal = posicionYinicial + sumaY;

speed = 30;
direction = point_direction(x,y, playerObj.x, playerObj.y)

if estadonotif == notificacion.spawn_1 {
	Not_Item_Spawn()
} else if estadonotif == notificacion.spawn_2 {
	Not_Item_Spawn_2()
} else if estadonotif == notificacion.showing_1 {
	Not_Item_Showing_1()
} else if estadonotif == notificacion.showing_2 {
	Not_Item_Showing_2()
} else if estadonotif == notificacion.movedown {
	Not_Item_Move_Down()
} else if estadonotif == notificacion.fade {
	Not_Item_Fade()
} else if estadonotif == notificacion.hiden {
	Not_Item_Hiden()
}