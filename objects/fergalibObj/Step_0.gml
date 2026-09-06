depth = -100;

if (distance_to_object(playerObj) < 30) {
	if (keyboard_check_pressed(ord("E"))){
		hablando = !hablando;
		
		if (hablando){
		mi_nombre = ds_grid_get(global.grid_dialogos, 1, fila);
        mi_text = ds_grid_get(global.grid_dialogos, 2, fila);
		}
	}
} else {
hablando = false;
}