x = mouse_x;
y = mouse_y;
depth = -9000;

key1 = keyboard_check(ord("1"));
key2 = keyboard_check(ord("2"));
key3 = keyboard_check(ord("3"));
key4 = keyboard_check(ord("4"));
key5 = keyboard_check(ord("5"));
key6 = keyboard_check(ord("6"));
key7 = keyboard_check(ord("7"));

if !(key1 || key2 || key3 || key4 || key5 || key6 || key7) {sprite_index = standarCur} else {
if key1 {sprite_index = fuegoCur}
if key2 {sprite_index = vientoCur}
if key3 {sprite_index = rayoCur}
if key4 {sprite_index = nubeCur}
if key5 {sprite_index = imanCur}
if key6 {sprite_index = ruidoCur}
if key7 {sprite_index = armoniaCur}
}

// Estado de Colisión de Pantalla

if place_meeting(x, y, pantallaleft) {
	cursorstate = 0;
}
if place_meeting(x, y, pantallaright) {
	cursorstate = 1;
}
if place_meeting(x, y, pantallaup) {
	cursorstate = 2;
}
if place_meeting(x, y, pantalladown) {
	cursorstate = 3;
}

// Lejanía con el jugador

var _target = playerObj;
if instance_exists(_target) {
	var _long_dist = 600;
	var _medium_dist = 350;
	var _close_dist = 200;
	var _dist = point_distance(_target.x, _target.y-64, mouse_x, mouse_y);
	
	if _dist <= _close_dist {
		cursordistance = 1;
	} else if (_dist > _close_dist) && (_dist <= _medium_dist) {
		cursordistance = 2;
	} else if (_dist > _medium_dist) && (_dist <= _long_dist) {
		cursordistance = 3;
	} else if (_dist > _long_dist) {
		cursordistance = 4;
	}
}
		
	
