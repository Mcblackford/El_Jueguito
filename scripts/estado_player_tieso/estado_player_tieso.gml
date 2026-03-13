function estado_player_tieso(){ // Inicio del Script

// Imputs

der = keyboard_check_pressed(ord("D"));
izq = keyboard_check_pressed(ord("A"));
arriba = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
abajo = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
atras = keyboard_check_pressed(ord("Q"));
siguiente = keyboard_check_pressed( ord("E"));
click = mouse_check_button_pressed(mb_left);
tab = keyboard_check_pressed(vk_tab);

// Movimiento

xspd = 0;
yspd = 0;

x += 0;
y += 0;

// Colision

if xspd != 0 && place_meeting(x + xspd, y, colisionObj){
	var _pixelcheck = sign(xspd);
	while !place_meeting(x + _pixelcheck, y, colisionObj) {
		x += _pixelcheck;
	}
	xspd = 0;
}

if yspd != 0 && place_meeting(x, y + yspd, colisionObj) {
	var _pixelcheck = sign(yspd);
	while !place_meeting(x, y + _pixelcheck, colisionObj) {
	y += _pixelcheck;
	}
	yspd = 0;
}

// Inventario


if tab {
	invGUIObj.activo = false;
	estado = states.control;
}

var ver = abajo - arriba;
var cantidad_visible = cantidadItem(invGUIObj.sec_act);

if (!invGUIObj.botones) {
    if (ver != 0) {
        invGUIObj.selector = clamp(invGUIObj.selector + ver, 0, max(0, cantidad_visible - 1));
    }

    if (keyboard_check_pressed(ord("D")) && cantidad_visible > 0) {
        invGUIObj.botones = true;
        invGUIObj.sub_selector = 0;
    }
} else {
    if (keyboard_check_pressed(ord("D"))) {
        invGUIObj.sub_selector = min(invGUIObj.sub_selector + 1, 1);
    }
    if (keyboard_check_pressed(ord("A"))) {
        if (invGUIObj.sub_selector > 0) {
            invGUIObj.sub_selector -= 1;
        } else {
            invGUIObj.botones = false;
        }
    }
}

//Intento para lo del mouse, presiento mi decadencia en la locura

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var visible_cantidad = cantidadItem(invGUIObj.sec_act)

if (!invGUIObj.botones) {
	if (mx > invGUIObj.x + 160 && mx < invGUIObj.x +660) {
		for (var d = 0; d < 12; d++) {
			var item_y_min = invGUIObj.y + 191 + (d * 39);
			var item_y_max = item_y_min + 39;
			
			if (my > item_y_min && my < item_y_max && d < visible_cantidad) {
				invGUIObj.selector = d;
				if (mouse_check_button_pressed(mb_left)) {
					invGUIObj.botones = true;
					invGUIObj.sub_selector = 1;
				}
			}
		}
	}
}
// botoncillos
if (invGUIObj.botones) {
	// bboton 0
	if (mx > invGUIObj.x + 672 && mx < invGUIObj.x + 820 && my < invGUIObj.y + 680) {
		invGUIObj.sub_selector = 0;
		if (mouse_check_button_pressed(mb_left)) {
			keyboard_key_press(vk_enter)
			keyboard_key_release(vk_enter)
		}
	}
	// boton 1
	if (mx > invGUIObj.x + 962 && mx < invGUIObj.x + 1110 && my > invGUIObj.y + 618 && my < invGUIObj.y + 680) {
		invGUIObj.sub_selector = 1;
		if (mouse_check_button_pressed(mb_left)) {
			keyboard_key_press(vk_enter)
			keyboard_key_release(vk_enter)
		}
	}
	
	// cancelar seleccion have
	if (mouse_check_button_pressed(mb_right)) {
		invGUIObj.botones = false;
	}
}
} // Fin del Script