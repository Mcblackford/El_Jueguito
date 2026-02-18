function estado_player_tieso(){ // Inicio del Script

// Imputs

der = keyboard_check(ord("D")) || keyboard_check_pressed(vk_right);
izq = keyboard_check(ord("A")) || keyboard_check_pressed(vk_left);
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
if (ver !=0){
	invGUIObj.selector = clamp(invGUIObj.selector + ver, 0, ds_list_size(inventarioObj.inventario) - 1);
}

} // Fin del Script