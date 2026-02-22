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
