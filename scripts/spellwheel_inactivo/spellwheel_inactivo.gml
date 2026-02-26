function spellwheel_inactivo(){

ruedatimer = 60;
ruedamove = 0;

if (mouse_wheel_up() || mouse_wheel_down()) && (playerObj.estado != states.tieso) {
	estadoderueda = ruedaestado.activo;
}

}