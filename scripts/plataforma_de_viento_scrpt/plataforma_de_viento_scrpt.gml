function plataforma_de_viento_scrpt(){ ///

var _wpsx = Wstartpointx;
var _wpsy = Wstartpointy;
var _wpx1 = Wpointx_1;
var _wpy1 = Wpointy_1;
var _wpx2 = Wpointx_2;
var _wpy2 = Wpointy_2;
var _wpx3 = Wpointx_3;
var _wpy3 = Wpointy_3;
var _wpx4 = Wpointx_4;
var _wpy4 = Wpointy_4;
var _wpx5 = Wpointx_5;
var _wpy5 = Wpointy_5;
var _wpx6 = Wpointx_6;
var _wpy6 = Wpointy_6;

if molinilloID.molinilloactivo == true {
	
	if collision_rectangle(x-2, y+2, x+2, y-2, movewindStart, true, true) {
		trayectoplat = 0;
	} else if collision_rectangle(x-2, y+2, x+2, y-2, movewindpoint1, true, true) {
		trayectoplat = 1;
	} else if collision_rectangle(x-2, y+2, x+2, y-2, movewindpoint2, true, true) {
		trayectoplat = 2;
	} else if collision_rectangle(x-2, y+2, x+2, y-2, movewindpoint3, true, true) {
		trayectoplat = 3;
	} else if collision_rectangle(x-2, y+2, x+2, y-2, movewindpoint4, true, true) {
		trayectoplat = 4;
	} else if collision_rectangle(x-2, y+2, x+2, y-2, movewindpoint5, true, true) {
		trayectoplat = 5;
	} else if collision_rectangle(x-2, y+2, x+2, y-2, movewindpoint6, true, true) {
		trayectoplat = 6;
	}
	
	if trayectoplat < 6 {
		
		speed = molinilloID.molinillorotacion;
		
		if trayectoplat == 0 {
			direction = point_direction(x,y, _wpx1, _wpy1);
		} else if trayectoplat == 1 {
			direction = point_direction(x,y, _wpx2, _wpy2);
		} else if trayectoplat == 2 {
			direction = point_direction(x,y, _wpx3, _wpy3);
		} else if trayectoplat == 3 {
			direction = point_direction(x,y, _wpx4, _wpy4);
		} else if trayectoplat == 4 {
			direction = point_direction(x,y, _wpx5, _wpy5);
		} else if trayectoplat == 5 {
			direction = point_direction(x,y, _wpx6, _wpy6);
		}
	} else {
		speed = 0;
	}
}

else if molinilloID.molinilloactivo == false {
	
	if collision_rectangle(x-2, y+2, x+2, y-2, movewindpoint1, true, true) {
		trayectoplat = 0;
	} else if collision_rectangle(x-2, y+2, x+2, y-2, movewindpoint2, true, true) {
		trayectoplat = 1;
	} else if collision_rectangle(x-2, y+2, x+2, y-2, movewindpoint3, true, true) {
		trayectoplat = 2;
	} else if collision_rectangle(x-2, y+2, x+2, y-2, movewindpoint4, true, true) {
		trayectoplat = 3;
	} else if collision_rectangle(x-2, y+2, x+2, y-2, movewindpoint5, true, true) {
		trayectoplat = 4;
	} else if collision_rectangle(x-2, y+2, x+2, y-2, movewindpoint6, true, true) {
		trayectoplat = 5;
	}
	
	if !collision_rectangle(x-2, y+2, x+2, y-2, movewindStart, true, true) {
		if speed < 5 {
			speed += acceldec;
		}
		if trayectoplat == 0 {
			direction = point_direction(x,y, _wpsx, _wpsy);
		} else if trayectoplat == 1 {
			direction = point_direction(x,y, _wpx1, _wpy1);
		} else if trayectoplat == 2 {
			direction = point_direction(x,y, _wpx2, _wpy2);
		} else if trayectoplat == 3 {
			direction = point_direction(x,y, _wpx3, _wpy3);
		} else if trayectoplat == 4 {
			direction = point_direction(x,y, _wpx4, _wpy4);
		} else if trayectoplat == 5 {
			direction = point_direction(x,y, _wpx5, _wpy5);
		}
	} else {
		speed = 0;
	}
}

}///