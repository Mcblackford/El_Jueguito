if (!activo) {exit;}

draw_self();

var inventariosize=ds_list_size(inventarioObj.inventario);
var i1 =max( selector - 6, 0);
var i2 =min(i1 + 12, inventariosize);
var frame = (current_time / 300); //animacion momentanea para el selector

var posy = 0;

for (var i=i1;i<i2;i++){ 
	var item= inventarioObj.inventario[| i];
	var itemVar= global.items[item[INVENTARIO_ITEM]];
	
	draw_set_font(short_story_x16);
	draw_set_colour(c_gray);
	
	if (i == selector) {
		draw_sprite_ext(itemVar[ITEM_VAR_SPRITE], 0, x + 852, y + 204 , 5.5 , 5.5 ,0 ,c_white ,1);
		draw_text_ext(x + 680, y + 438, string(itemVar[ITEM_VAR_DESCRP]), 34 ,540)
		draw_sprite_ext(invselecSpr, frame, x + 160, y + 191 + posy,2.84 , 3,0,c_white,0.5); // selector momentaneo
	}
	
	draw_text(x + 175, y + 202 + posy,itemVar[ITEM_VAR_NAME]);

	draw_set_halign(fa_right);
	draw_text(x + 610, y + 202 + posy, "x" + string(item[INVENTARIO_CANTIDAD]));
	draw_set_halign(fa_left);
	
	draw_set_font(scrambled_eggs_x20)
	// botones
	if (botones && sub_selector == 0) {
    draw_sprite_ext(invselecSpr, frame, x + 672, y + 618, 1.53, 3.2,0, c_white, 0.5); // Dibujar resaltado
	}
	draw_text(x + 489 + 90, y + 795 + 10, "xd");

	//boton 2
	if (botones && sub_selector == 1) {
    draw_sprite_ext(invselecSpr, frame, x + 962, y + 618, 1.53, 3.2,0, c_white, 0.5);
	}
	draw_text(700 + 90, 795 + 10, "USAR");
	draw_set_font(short_story_x16)
	posy += 39; // siempre ultimo
}