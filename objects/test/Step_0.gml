if (turno_jugador == true && combate_terminado == false && keyboard_check_pressed(ord("K"))) {
    
    var _atacante = global.equipo[0];
    var _defensor = global.enemigo;
    var _habilidad = _atacante.habilidades[0];
    
    show_debug_message("--- TURNO DEL JUGADOR ---");
    show_debug_message(_atacante.nombre + " usó " + _habilidad.nombre + "!");

    var _danio = (_habilidad.poder + _atacante.ataque_base) - _defensor.defensa;
    
    if (_danio < 1) { _danio = 1; }
    
    _defensor.hp_actual -= _danio;
    show_debug_message("Hizo " + string(_danio) + " de daño. HP del Enemigo: " + string(_defensor.hp_actual));
    
    if (_defensor.hp_actual <= 0) {
        show_debug_message("¡El enemigo ha sido derrotado! ¡Ganaste!");
        combate_terminado = true;
    } else {
        turno_jugador = true;
        alarm[0] = 60; 
        show_debug_message("El enemigo se prepara para atacar...");
    }
}