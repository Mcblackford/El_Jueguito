fadetimer--;

posicionYfinal = posicionYinicial + sumaY;

speed = 30;
direction = point_direction(x,y, playerObj.x, playerObj.y)

if estadonotif == notificacion.spawn {
	Not_Item_Spawn()
} else if estadonotif == notificacion.showing {
	Not_Item_Showing()
} else if estadonotif == notificacion.movedown {
	Not_Item_Move_Down()
} else if estadonotif == notificacion.fade {
	Not_Item_Fade()
} else if estadonotif == notificacion.hiden {
	Not_Item_Hiden()
}