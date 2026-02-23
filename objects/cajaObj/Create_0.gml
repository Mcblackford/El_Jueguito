// Estados

enum cajastate {
	idle,
	burning,
	onfire,
	todust,
	dusted
}

estadocaja = cajastate.idle;

// Variables

burntimer = 0;
onfire = false;

cajamovespd = 5;
cajaxspd = 0;
cajadecel = 1.5;
cajagravedad = 0.1;
randomwind = 0;
sidedvalue = 0;
vientofuer = 0;
colisionvalue = 0;