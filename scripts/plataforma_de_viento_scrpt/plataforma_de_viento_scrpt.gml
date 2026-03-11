function plataforma_de_viento_scrpt(){ ///

if collision_rectangle(x-8, y+8, x, y, movewindStart, true, true) {
	trayectoplat = 0;
} else if collision_rectangle(x-8, y+8, x, y, movewindpoint1, true, true) {
	trayectoplat = 1;
} else if collision_rectangle(x-8, y+8, x, y, movewindpoint2, true, true) {
	trayectoplat = 2;
} else if collision_rectangle(x-8, y+8, x, y, movewindpoint3, true, true) {
	trayectoplat = 3;
} else if collision_rectangle(x-8, y+8, x, y, movewindpoint4, true, true) {
	trayectoplat = 4;
} else if collision_rectangle(x-8, y+8, x, y, movewindpoint5, true, true) {
	trayectoplat = 5;
} else if collision_rectangle(x-8, y+8, x, y, movewindpoint6, true, true) {
	trayectoplat = 6;
}

if molinilloObj.molinilloactivo == true {

	if trayectoplat < 6 {
		
		speed = molinilloObj.molinillorotacion;
		
		if trayectoplat == 0 {
			direction = point_direction(x,y, Wpointx_1, Wpointy_1);
		} else if trayectoplat == 1 {
			direction = point_direction(x,y, Wpointx_2, Wpointy_2);
		} else if trayectoplat == 2 {
			direction = point_direction(x,y, Wpointx_3, Wpointy_3);
		} else if trayectoplat == 3 {
			direction = point_direction(x,y, Wpointx_4, Wpointy_4);
		} else if trayectoplat == 4 {
			direction = point_direction(x,y, Wpointx_5, Wpointy_5);
		} else if trayectoplat == 5 {
			direction = point_direction(x,y, Wpointx_6, Wpointy_6);
		}
	} else {
		speed = 0;
	}
}

else if molinilloObj.molinilloactivo == false {
	
	if speed == 0 && !collision_rectangle(x-8, y+8, x, y, movewindStart, true, true) 
	&& !collision_rectangle(x-8, y+8, x, y, movewindpoint1, true, true) 
	&& !collision_rectangle(x-8, y+8, x, y, movewindpoint2, true, true) 
	&& !collision_rectangle(x-8, y+8, x, y, movewindpoint3, true, true) 
	&& !collision_rectangle(x-8, y+8, x, y, movewindpoint4, true, true) 
	&& !collision_rectangle(x-8, y+8, x, y, movewindpoint5, true, true) 
	&& !collision_rectangle(x-8, y+8, x, y, movewindpoint6, true, true) {
		trayectoplat += 1;
	}
	
	if trayectoplat > 0 {
		if speed < 5 {
			speed += acceldec;
		}
		if trayectoplat == 1 {
			direction = point_direction(x,y, Wstartpointx, Wstartpointy);
		} else if trayectoplat == 2 {
			direction = point_direction(x,y, Wpointx_1, Wpointy_1);
		} else if trayectoplat == 3 {
			direction = point_direction(x,y, Wpointx_2, Wpointy_2);
		} else if trayectoplat == 4 {
			direction = point_direction(x,y, Wpointx_3, Wpointy_3);
		} else if trayectoplat == 5 {
			direction = point_direction(x,y, Wpointx_4, Wpointy_4);
		} else if trayectoplat == 6 {
			direction = point_direction(x,y, Wpointx_5, Wpointy_5);
		}
	} else {
		speed = 0;
	}
}

}///