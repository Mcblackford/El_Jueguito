if (playerObj.estado == states.hechizo) && (cursorObj.sprite_index == vientoCur) {
	
	x = playerObj.x;
	y = playerObj.y;
	
	image_xscale = 15;
	image_yscale = 15;
	
	if cursorObj.cursorstate == 1 {
		sprite_index = windleftcolSpr;
	}
	if cursorObj.cursorstate == 0 {
		sprite_index = windrightcolSpr;
	}
	if cursorObj.cursorstate == 2 {
		sprite_index = windupcolSpr;
	}
	if cursorObj.cursorstate == 3 {
		sprite_index = winddowncolSpr;
	}
} else {
	
	x = 0;
	y = 0;

	image_xscale = 1;
	image_yscale = 1;
	
	sprite_index = emptycollSpr;
}