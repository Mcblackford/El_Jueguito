if follow != noone {
	xTo = follow.x
	yTo = follow.y
}

der = keyboard_check( ord("D") );
izq = keyboard_check( ord("A") );
arriba = keyboard_check( ord("W") );
abajo = keyboard_check( ord("S") );
jump = keyboard_check_pressed( vk_space );
jumphold = keyboard_check(vk_space);

x += (xTo - x) / 15;
y += (yTo - y) / 10;

camera_set_view_pos(view_camera[0], x - (camLar*0.5), y - (camAlt*0.75));