if (!activo) {exit;}

draw_self();

var inventariosize=min(ds_list_size(inventarioObj.inventario), 12);

for (var i=0;i<inventariosize;i++){ 
	var posy = i * 39; 
	var item= inventarioObj.inventario[| i];
	var itemVar= global.items[item[INVENTARIO_ITEM]];
	
	draw_sprite_ext(itemVar[ITEM_VAR_SPRITE], 0, x + 852, y + 204 , 5.5 , 5.5 ,0 ,c_white ,1);

	draw_set_font(short_story_x16);
	draw_set_colour(c_gray);
	draw_text(x + 175, y + 202 + posy,itemVar[ITEM_VAR_NAME]);

	draw_set_halign(fa_right);
	draw_text(x + 610, y + 202 + posy, "x" + string(item[INVENTARIO_CANTIDAD]));
	draw_set_halign(fa_left);
	
	draw_sprite_ext(invselecSpr, 0, x + 175, y + 202 + posy,1 , 1,0,c_white,1);
}