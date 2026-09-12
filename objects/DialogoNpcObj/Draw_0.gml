draw_self();

if (hablando) {
    if (alfasprite < 1) {
        alfasprite += alfasumaspr;
    } else {
        alfasprite = 1;
    }
} else {
    if (alfasprite > 0) {
        alfasprite -= alfasumaspr;
    } else {
        alfasprite = 0;
    }
}

if (alfasprite > 0) {
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    
    var pos_x = x;
    var pos_y = y - sprite_height - 10;
    var ancho = string_width(mi_text) / 2;
    var alto = string_height(mi_text) + 20; 
    
    draw_set_color(c_black);
    draw_set_alpha(0.7 * alfasprite); 
    draw_rectangle(pos_x - ancho - 10, pos_y - alto - 10, pos_x + ancho + 10, pos_y + 5, false);

    draw_set_color(c_red);
    draw_set_alpha(alfasprite); 
    draw_text(pos_x, pos_y - string_height(mi_text), mi_nombre + ":");
    
    draw_set_color(c_white);
    draw_set_alpha(alfasprite);
    draw_text(pos_x, pos_y, mi_text);
    
    draw_set_alpha(1); 
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}