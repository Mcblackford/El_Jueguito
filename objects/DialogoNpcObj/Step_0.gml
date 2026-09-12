depth = -100;

if (distance_to_object(playerObj) < 35) {
	if (!hablando && !yahab){
		hablando = true;
		fila_act = fila_ini;
		
		mi_nombre = ds_grid_get(global.grid_dialogos, 1 ,fila_act);
		mi_text = ds_grid_get(global.grid_dialogos, 2,fila_act);
	}
	if (hablando && keyboard_check_pressed(ord("E"))) {
	fila_act += 1;
		if (fila_act <= fila_fin){
			mi_nombre = ds_grid_get(global.grid_dialogos, 1 ,fila_act);
			mi_text = ds_grid_get(global.grid_dialogos, 2,fila_act);
		} else {
		hablando = false;
		yahab = true;
		}
	}
} else {
hablando = false; 
yahab = false;
}