if settimeradq > 0 {
	if alfasprite < 1 {
		alfasprite += alfasumaslow;
	} else {
		alfasprite = 1;
	}
}

else {
	if alfasprite > 0 {
		alfasprite -= alfasumaspr;
	} else {
		alfasprite = 0;
	}
}

draw_sprite_ext(adquirirhabSpr,-1, 140, 160, 2.13, 2.13, 0, c_white, alfasprite)

draw_set_alpha(alfasprite)
draw_set_font(scrambled_eggs_x20)
draw_text_ext(240, 432, "Aprendiste el hechizo de ----", 20, 1000)

draw_set_font(short_story_x16)
draw_text_ext(240, 495, "Ahora puedes ...........", 20, 1000)