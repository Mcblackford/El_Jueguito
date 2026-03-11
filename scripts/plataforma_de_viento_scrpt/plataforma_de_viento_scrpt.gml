function plataforma_de_viento_scrpt(){ ///

if x == Wstartpointx && y == Wstartpointy {
	trayectoplat = 0;
} else if x == Wpointx_1 && y == Wpointy_1 {
	trayectoplat = 1;
} else if x == Wpointx_2 && y == Wpointy_2 {
	trayectoplat = 2;
} else if x == Wpointx_3 && y == Wpointy_3 {
	trayectoplat = 3;
} else if x == Wpointx_4 && y == Wpointy_4 {
	trayectoplat = 4;
} else if x == Wpointx_5 && y == Wpointy_5 {
	trayectoplat = 5;
} else if x == Wpointx_6 && y == Wpointy_6 {
	trayectoplat = 6;
}

if molinilloObj.molinilloactivo == false {
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


}///