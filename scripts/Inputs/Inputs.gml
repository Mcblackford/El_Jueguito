function Inputs(){

der = keyboard_check( ord("D") );
izq = keyboard_check( ord("A") );
arriba = keyboard_check( ord("W") );
abajo = keyboard_check( ord("S") );
interact = keyboard_check_pressed( ord("E"));
jump = keyboard_check_pressed( vk_space );
jumphold = keyboard_check(vk_space);
habilidad = mouse_check_button_pressed(mb_left);
tab = keyboard_check_pressed(vk_tab);

}