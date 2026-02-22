depth = -95;
image_xscale = 2.7;
image_yscale = 2.7;

if estadodecofre == estadosdecofre.cerrado {
	cofre_cerrado()
}

else if estadodecofre == estadosdecofre.espera {
	cofre_espera()
}

else if estadodecofre == estadosdecofre.abriendo {
	cofre_abriendo()
}

else if estadodecofre == estadosdecofre.abierto {
	cofre_abierto()
}

if !place_meeting(x,y,enredaderaObj) && !collision_rectangle(x-20,y,x+20,y+1,colisionObj,true,true) {
	cofregravedad++;
	y += cofregravedad;
} else {
	y+= 0;
	var plataforma = collision_rectangle(x-20,y,x+20,y+1,colisionObj,true,true)
	if (plataforma) {
		y = plataforma.y;
}
}