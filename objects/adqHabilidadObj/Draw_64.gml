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
draw_set_colour(c_white)

if textstate == 0 { /// Fuego
	draw_set_font(scrambled_eggs_x20)
	draw_text_ext(370, 432, "Aprendiste el Hechizo de Fuego!", 20, 1000)
	
	draw_set_font(short_story_x14)
	draw_text_ext(250, 495, "Lanza bolas de fuego para quemar cosas tu alrededor!", 20, 1000)
	
} else if textstate == 1 { // Viento
	draw_set_font(scrambled_eggs_x20)
	draw_text_ext(360, 432, "Aprendiste el Hechizo de Viento!", 20, 1000)
	
	draw_set_font(short_story_x14)
	draw_text_ext(280, 495, "Crea una fuerte rafaga de viento para empujar cosas!", 20, 1000)
	
} else if textstate == 2 { // Iman
	draw_set_font(scrambled_eggs_x20)
	draw_text_ext(305, 432, "Aprendiste el Hechizo de Magnetismo!", 20, 1000)
	
	draw_set_font(short_story_x14)
	draw_text_ext(290, 495, "Invoca un campo magnético enorme que atrae objetos metálicos!", 20, 1000)
	
} else if textstate == 3 { // Rayo
	draw_set_font(scrambled_eggs_x20)
	draw_text_ext(240, 432, "Aprendiste el Hechizo de Rayo", 20, 1000)
	
	draw_set_font(short_story_x14)
	draw_text_ext(240, 495, "Lanza un potente rayo electrico para dar energía a mecanismos!", 20, 1000)
	
} else if textstate == 4 { // Nube
	draw_set_font(scrambled_eggs_x20)
	draw_text_ext(240, 432, "Aprendiste el Hechizo de Nube", 20, 1000)
	
	draw_set_font(short_story_x14)
	draw_text_ext(240, 495, "Invoca una nube densa que puede llegar a distintos lugares!", 20, 1000)
	
} else if textstate == 5 { // Luz
	draw_set_font(scrambled_eggs_x20)
	draw_text_ext(240, 432, "Aprendiste el Hechizo de Luz", 20, 1000)
	
	draw_set_font(short_story_x14)
	draw_text_ext(240, 495, "Crea un potente destello que ilumina los sitios oscuros!", 20, 1000)
	
} else if textstate == 6 { //Musica
	draw_set_font(scrambled_eggs_x20)
	draw_text_ext(240, 432, "Aprendiste el Hechizo de Música", 20, 1000)
	
	draw_set_font(short_story_x14)
	draw_text_ext(240, 495, "Ahora puedes tocar brillantes y misteriosas melodías!", 20, 1000)
	
}