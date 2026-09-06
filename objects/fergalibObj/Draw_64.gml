if (hablando) {
    // 1. Dibujamos el fondo de la caja de diálogo (negro)
    draw_set_color(c_black);
    draw_rectangle(10, 10, 500, 100, false);
    
    // 2. Cambiamos el color de la letra (blanco)
    draw_set_color(c_white);
    
    // 3. Escribimos el nombre y el texto
    draw_text(20, 20, mi_nombre + ":");
    draw_text(20, 50, mi_text);
}