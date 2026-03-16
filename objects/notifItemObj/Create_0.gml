name = "Poción";
desc = noone;
sprite = noone;
cant = "2";
sumstring = " +"

fadetimer = 0;
fadetimerini = 120;

enum notificacion {
	hiden,
	spawn,
	showing_1,
	showing_2,
	movedown,
	fade
}

estadonotif = notificacion.hiden;

alfasprite = 0;
alfasumaspr = 0.075;
alfasumaslow = 0.1;
alfasumaveryslow = 0.01;

posicionYinicial = 0;
sumaY = -150;
posicionYfinal = 0;
velocidaddesuma = 15;